import Erdos848.TailSupportScanChecker
import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskSemanticCertificate

namespace Erdos848

theorem globalMixedMaskAllRange_eq_allNatRange
    (predicate : ℕ → Bool) (start count : ℕ) :
    globalMixedMaskAllRange predicate start count =
      allNatRange predicate start count := by
  induction count generalizing start with
  | zero => rfl
  | succ count ih =>
      simp only [globalMixedMaskAllRange, allNatRange]
      rw [ih]

theorem globalMixedNormalMask_certificate
    (lookup : ℕ → List ℕ) (p : ℕ)
    (hpass : globalMixedNormalMaskPassesWith lookup p = true) :
    SquareWordMaskCertificate 3025 p (lookup p) := by
  unfold globalMixedNormalMaskPassesWith at hpass
  have hfirst := Bool.and_eq_true_iff.mp hpass
  have hsecond := Bool.and_eq_true_iff.mp hfirst.1
  refine ⟨of_decide_eq_true hsecond.1, ?_, ?_⟩
  · simpa [globalMixedMaskAllRange_eq_allNatRange,
      globalMixedMaskTestBit, wordMaskTestBit] using hsecond.2
  · simpa [globalMixedMaskAllRange_eq_allNatRange,
      globalMixedMaskTestBit, wordMaskTestBit] using hfirst.2

theorem globalMixedTwistMask_testBit_eq_normal
    (normalLookup twistLookup : ℕ → List ℕ) (p index : ℕ)
    (hpass : globalMixedTwistMaskPassesWith
      normalLookup twistLookup p = true)
    (hindex : index < 605) :
    wordMaskTestBit (twistLookup p) index =
      wordMaskTestBit (normalLookup p) (5 * (index + 1) - 1) := by
  have hall : globalMixedMaskAllRange
      (fun i =>
        globalMixedMaskTestBit (twistLookup p) i ==
          globalMixedMaskTestBit (normalLookup p) (5 * (i + 1) - 1))
      0 605 = true := by
    simpa [globalMixedTwistMaskPassesWith] using hpass
  have hall' : allNatRange
      (fun i =>
        globalMixedMaskTestBit (twistLookup p) i ==
          globalMixedMaskTestBit (normalLookup p) (5 * (i + 1) - 1))
      0 605 = true := by
    simpa [globalMixedMaskAllRange_eq_allNatRange] using hall
  have hbit := (allNatRange_eq_true_iff _ _ _).mp hall'
    index (by omega) (by omega)
  simpa [globalMixedMaskTestBit, wordMaskTestBit] using
    (beq_iff_eq.mp hbit)

theorem globalMixedMask_global_passes
    {p : ℕ}
    (hp : p ∈
      GeneratedTailGlobalMixedSupportCoverage.mixedMaskPrimes) :
    globalMixedMaskPassesWith
      GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
      GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords p = true := by
  have hp' : p ∈
      GeneratedTailGlobalMixedSupportCoverage.certifiedMaskPrimes := by
    rwa [GeneratedTailGlobalMixedSupportCoverage.certifiedMaskPrimes_eq]
  exact (List.all_eq_true.mp
    GeneratedTailGlobalMixedSupportCoverage.certifiedMaskPrimes_global_passes)
      p hp'

theorem globalMixedNormalMask_contains_square
    {p m root : ℕ}
    (hp : p ∈
      GeneratedTailGlobalMixedSupportCoverage.mixedMaskPrimes)
    (hm : 1 ≤ m) (hmBound : m ≤ 3025)
    (hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    wordMaskTestBit
      (GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords p)
      (m - 1) = true := by
  have hpass := globalMixedMask_global_passes hp
  have hnormal : globalMixedNormalMaskPassesWith
      GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords p = true :=
    (Bool.and_eq_true_iff.mp hpass).1
  exact SquareWordMaskCertificate.testBit_eq_true_of_modEq_square
    (globalMixedNormalMask_certificate _ p hnormal)
    hm hmBound hnotDvd hsquare

theorem globalMixedTwistMask_contains_square
    {p m root : ℕ}
    (hp : p ∈
      GeneratedTailGlobalMixedSupportCoverage.mixedMaskPrimes)
    (hm : 1 ≤ m) (hmBound : m ≤ 605)
    (hnotDvd : ¬ p ∣ 5 * m) (hsquare : root ^ 2 ≡ 5 * m [MOD p]) :
    wordMaskTestBit
      (GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords p)
      (m - 1) = true := by
  have hpass := globalMixedMask_global_passes hp
  have hnormal : globalMixedNormalMaskPassesWith
      GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords p = true :=
    (Bool.and_eq_true_iff.mp hpass).1
  have htwist : globalMixedTwistMaskPassesWith
      GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
      GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords p = true :=
    (Bool.and_eq_true_iff.mp hpass).2
  have hnormalBit : wordMaskTestBit
      (GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords p)
      (5 * m - 1) = true := by
    exact SquareWordMaskCertificate.testBit_eq_true_of_modEq_square
      (globalMixedNormalMask_certificate _ p hnormal)
      (by omega) (by omega) hnotDvd hsquare
  have hcompressed := globalMixedTwistMask_testBit_eq_normal
    _ _ p (m - 1) htwist (by omega)
  calc
    wordMaskTestBit
        (GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords p)
        (m - 1) =
      wordMaskTestBit
        (GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords p)
        (5 * ((m - 1) + 1) - 1) := hcompressed
    _ = wordMaskTestBit
        (GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords p)
        (5 * m - 1) := by congr 1 <;> omega
    _ = true := hnormalBit

#print axioms globalMixedNormalMask_contains_square
#print axioms globalMixedTwistMask_contains_square

end Erdos848
