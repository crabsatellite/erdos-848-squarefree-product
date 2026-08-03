import Erdos848.TailHybridPaperRootSupportComplete
import Erdos848.TailHybridPaperTwistMaskChecker

namespace Erdos848

/-!
# Finite certificate ABI for the five-twist hybrid root rows

For a stored five-twist quotient `m`, the support condition is that `5*m`
is a nonzero square modulo each retained support prime.  This is not the same
mask as the ordinary condition on `m`.  The provider below contains only:

* finite word-mask semantics through the fixed bound;
* full-mask fallbacks for the finite support table; and
* the forty-eight closed Boolean root scans.

It contains no ambient `N`, Hall set, pivot, interval theorem, or matching
conclusion.  Generated certificate data can therefore be regenerated
without changing any mathematical consumer.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

structure HybridPaperTwistCertificateProvider where
  lookup : HybridPaperDiagonalRegime → Nat → List Nat
  maskCertificate :
    ∀ (regime : HybridPaperDiagonalRegime) {p : Nat},
      p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimes →
        HybridPaperTwistWordMaskCertificate
          regime.rootBound p (regime.rootLookup p) (lookup regime p)
  fallbackCertificate :
    ∀ (regime : HybridPaperDiagonalRegime) {p : Nat},
      p ∈ Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes →
      p ∉ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimes →
        FullWordMaskCertificate regime.rootBound (lookup regime p)
  scanPasses :
    ∀ (regime : HybridPaperDiagonalRegime) (squareCoset : Bool)
      {k : Nat}, 3 ≤ k → k ≤ 8 →
        hybridPaperRootScanPasses
          (lookup regime) (regime.rootTarget k) regime.stop
          (k - 1) 1
          Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes
          (regime.rootBaseWords squareCoset) = true

theorem HybridPaperTwistCertificateProvider.contains_square
    (provider : HybridPaperTwistCertificateProvider)
    (normalProvider : HybridPaperRootCertificateProvider)
    (regime : HybridPaperDiagonalRegime)
    {p m root : Nat}
    (hpSupport :
      p ∈ Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes)
    (hm : 1 ≤ m) (hmBound : m ≤ regime.rootBound)
    (hnotDvd : ¬ p ∣ 5 * m)
    (hsquare : root ^ 2 ≡ 5 * m [MOD p]) :
    wordMaskTestBit (provider.lookup regime p) (m - 1) = true := by
  by_cases hpMask :
      p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimes
  · have hpUpper : p ≤ 1237 := by
      have hpFilter :
          p ∈
            Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.filter
              (fun q => q ≤ 1237) := by
        simpa [hybridPaperMaskPrimes_eq_filter] using hpMask
      exact of_decide_eq_true (List.mem_filter.mp hpFilter).2
    have hpBound : p ≤ regime.rootBound := by
      cases regime <;>
        norm_num [HybridPaperDiagonalRegime.rootBound] <;>
        omega
    exact
      HybridPaperTwistWordMaskCertificate.testBit_eq_true_of_modEq_square
        (provider.maskCertificate regime hpMask)
        (regime.rootLookup_certificate normalProvider hpMask)
        hpBound hm hmBound hnotDvd hsquare
  · exact
      FullWordMaskCertificate.testBit_eq_true
        (provider.fallbackCertificate regime hpSupport hpMask)
        (index := m - 1) (by omega)

theorem HybridPaperTwistCertificateProvider.actualSupportWords_count_le_target
    (provider : HybridPaperTwistCertificateProvider)
    (normalProvider : HybridPaperRootCertificateProvider)
    (regime : HybridPaperDiagonalRegime) (squareCoset : Bool)
    (support : List Nat)
    (hLength : support.length ≤ 8)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hFinite : support.prod < regime.stop) :
    globalMixedCoreCountWords
        (hybridPaperRootSupportWords (provider.lookup regime)
          support.dropLast (regime.rootBaseWords squareCoset)) ≤
      regime.rootTarget support.length := by
  exact hybridPaperActualSupportWords_count_le_target_of_scan
    normalProvider regime squareCoset
      (provider.lookup regime) support
    (provider.scanPasses regime squareCoset)
    hLength hPrimes hIncreasing hFinite

#print axioms
  HybridPaperTwistWordMaskCertificate.testBit_eq_true_of_modEq_square
#print axioms HybridPaperTwistCertificateProvider.contains_square
#print axioms
  HybridPaperTwistCertificateProvider.actualSupportWords_count_le_target

end Erdos848
