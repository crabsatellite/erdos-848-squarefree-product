import Erdos848.GeneratedHybridPaperRootCoverage.Block3Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block0CosetBaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block1CosetBaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block2CosetBaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3CosetBaseData
import Erdos848.TailHybridPaperDiagonalGridData
import Erdos848.TailHybridPaperRootChecker
import Erdos848.TailHybridPaperRootCosetChecker
import Erdos848.TailHybridPaperWordMaskPrefix
import Erdos848.TailSupportEnumeration

namespace Erdos848

/-!
# Semantic access to the four hybrid root-certificate blocks

The generated modules contain only word masks and closed Boolean scans.  This
file gives them one uniform interface.  No Hall set, pivot, or interval
conclusion occurs in the certificate interface.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def HybridPaperDiagonalRegime.rootSplit :
    HybridPaperDiagonalRegime → Nat
  | .twoHundredToThreeHundred => 75
  | .threeHundredToFiveHundred => 85
  | .fiveHundredToOneBillion => 100
  | .oneToTwoBillion => 125

def HybridPaperDiagonalRegime.rootBound :
    HybridPaperDiagonalRegime → Nat
  | .twoHundredToThreeHundred => 5_625
  | .threeHundredToFiveHundred => 7_225
  | .fiveHundredToOneBillion => 10_000
  | .oneToTwoBillion => 15_625

def HybridPaperDiagonalRegime.rootTarget
    (regime : HybridPaperDiagonalRegime) : Nat → Nat :=
  match regime with
  | .twoHundredToThreeHundred => fun
      | 0 | 1 | 2 => 2_250
      | 3 => 1_615
      | 4 => 805
      | 5 => 399
      | 6 => 196
      | 7 => 94
      | 8 => 43
      | _ => 0
  | .threeHundredToFiveHundred => fun
      | 0 | 1 | 2 => 2_890
      | 3 => 2_038
      | 4 => 1_016
      | 5 => 504
      | 6 => 248
      | 7 => 120
      | 8 => 56
      | _ => 0
  | .fiveHundredToOneBillion => fun
      | 0 | 1 | 2 => 4_000
      | 3 => 2_789
      | 4 => 1_391
      | 5 => 690
      | 6 => 341
      | 7 => 166
      | 8 => 79
      | _ => 0
  | .oneToTwoBillion => fun
      | 0 | 1 | 2 => 6_250
      | 3 => 4_256
      | 4 => 2_124
      | 5 => 1_056
      | 6 => 522
      | 7 => 256
      | 8 => 122
      | _ => 0

def HybridPaperDiagonalRegime.rootLookup
    (_regime : HybridPaperDiagonalRegime) : Nat → List Nat :=
  Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords

def HybridPaperDiagonalRegime.rootBaseWords
    (regime : HybridPaperDiagonalRegime) (squareCoset : Bool) : List Nat :=
  match regime, squareCoset with
  | .twoHundredToThreeHundred, true =>
      Erdos848.GeneratedHybridPaperRootCoverage.block0SquareBaseWords
  | .twoHundredToThreeHundred, false =>
      Erdos848.GeneratedHybridPaperRootCoverage.block0NonsquareBaseWords
  | .threeHundredToFiveHundred, true =>
      Erdos848.GeneratedHybridPaperRootCoverage.block1SquareBaseWords
  | .threeHundredToFiveHundred, false =>
      Erdos848.GeneratedHybridPaperRootCoverage.block1NonsquareBaseWords
  | .fiveHundredToOneBillion, true =>
      Erdos848.GeneratedHybridPaperRootCoverage.block2SquareBaseWords
  | .fiveHundredToOneBillion, false =>
      Erdos848.GeneratedHybridPaperRootCoverage.block2NonsquareBaseWords
  | .oneToTwoBillion, true =>
      Erdos848.GeneratedHybridPaperRootCoverage.block3SquareBaseWords
  | .oneToTwoBillion, false =>
      Erdos848.GeneratedHybridPaperRootCoverage.block3NonsquareBaseWords

def HybridPaperDiagonalRegime.rootFallbackWords
    (_regime : HybridPaperDiagonalRegime) : List Nat :=
  Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

theorem HybridPaperDiagonalRegime.rootBound_eq_split_sq
    (regime : HybridPaperDiagonalRegime) :
    regime.rootBound = regime.rootSplit ^ 2 := by
  cases regime <;> norm_num [rootBound, rootSplit]

theorem HybridPaperDiagonalRegime.rootSplit_pos
    (regime : HybridPaperDiagonalRegime) :
    0 < regime.rootSplit := by
  cases regime <;> norm_num [rootSplit]

structure HybridPaperRootCertificateProvider where
  supportPrimeCertificate :
    ∀ {p : Nat}, FiveMillionSupportPrime p → p ≤ 44_729 →
      p ∈ Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes
  baseCertificate :
    ∀ (regime : HybridPaperDiagonalRegime) (squareCoset : Bool),
      ModFiveCosetWordMaskCertificate
        regime.rootBound squareCoset
          (regime.rootBaseWords squareCoset)
  maskCertificate :
    ∀ (regime : HybridPaperDiagonalRegime) {p : Nat},
      p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimes →
        SquareWordMaskCertificate
          regime.rootBound p (regime.rootLookup p)
  scanPasses :
    ∀ (regime : HybridPaperDiagonalRegime) (squareCoset : Bool)
      {k : Nat}, 3 ≤ k → k ≤ 8 →
        hybridPaperRootScanPasses
          regime.rootLookup (regime.rootTarget k) regime.stop
          (k - 1) 1
          Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes
          (regime.rootBaseWords squareCoset) = true
  smallTargetCovers :
    ∀ (regime : HybridPaperDiagonalRegime) (squareCoset : Bool)
      {k : Nat}, k ≤ 2 →
        globalMixedCoreCountWords
            (regime.rootBaseWords squareCoset) ≤
          regime.rootTarget k

theorem HybridPaperRootCertificateProvider.baseWords_lt
    (provider : HybridPaperRootCertificateProvider)
    (regime : HybridPaperDiagonalRegime) (squareCoset : Bool) :
    ∀ word ∈ regime.rootBaseWords squareCoset, word < 2 ^ 64 := by
  intro word hword
  exact (provider.baseCertificate regime squareCoset).word_lt hword

theorem HybridPaperDiagonalRegime.rootFallbackCertificate
    (regime : HybridPaperDiagonalRegime) :
    FullWordMaskCertificate
      regime.rootBound regime.rootFallbackWords := by
  have hlarge :
      FullWordMaskCertificate 15_625
        Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords :=
    ⟨by decide⟩
  cases regime <;>
    apply hlarge.restrictBound <;>
    norm_num [rootBound]

theorem hybridPaperMaskPrimes_eq_filter :
    Erdos848.GeneratedHybridPaperRootCoverage.maskPrimes =
      Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes.filter
        (fun p => p ≤ 1237) := by
  decide

theorem mem_hybridPaperMaskPrimes_of_supportPrime
    (provider : HybridPaperRootCertificateProvider)
    {p : Nat} (hp : FiveMillionSupportPrime p) (hpUpper : p ≤ 1237) :
    p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimes := by
  have hpRoot :
      p ∈ Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes :=
    provider.supportPrimeCertificate hp (by omega)
  rw [hybridPaperMaskPrimes_eq_filter]
  exact List.mem_filter.mpr
    ⟨hpRoot, decide_eq_true hpUpper⟩

theorem HybridPaperDiagonalRegime.rootLookup_fallback
    (provider : HybridPaperRootCertificateProvider)
    (regime : HybridPaperDiagonalRegime) {p : Nat}
    (hp : FiveMillionSupportPrime p)
    (hpNot :
      p ∉ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimes) :
    regime.rootLookup p = regime.rootFallbackWords := by
  have hpLarge : 1237 < p := by
    by_contra hnot
    exact hpNot
      (mem_hybridPaperMaskPrimes_of_supportPrime provider hp (by omega))
  have hpBeyond : ¬ p ≤ 1237 := by omega
  have hp61 : ¬ p ≤ 61 := by omega
  have hp139 : ¬ p ≤ 139 := by omega
  have hp229 : ¬ p ≤ 229 := by omega
  have hp317 : ¬ p ≤ 317 := by omega
  have hp421 : ¬ p ≤ 421 := by omega
  have hp521 : ¬ p ≤ 521 := by omega
  have hp619 : ¬ p ≤ 619 := by omega
  have hp733 : ¬ p ≤ 733 := by omega
  have hp839 : ¬ p ≤ 839 := by omega
  have hp953 : ¬ p ≤ 953 := by omega
  have hp1061 : ¬ p ≤ 1061 := by omega
  have hp1181 : ¬ p ≤ 1181 := by omega
  simp [HybridPaperDiagonalRegime.rootLookup,
    HybridPaperDiagonalRegime.rootFallbackWords,
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords,
    hpBeyond, hp61, hp139, hp229, hp317, hp421,
    hp521, hp619, hp733, hp839, hp953, hp1061, hp1181]

theorem HybridPaperDiagonalRegime.rootLookup_fallbackCertificate
    (provider : HybridPaperRootCertificateProvider)
    (regime : HybridPaperDiagonalRegime) {p : Nat}
    (hp : FiveMillionSupportPrime p)
    (hpNot :
      p ∉ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimes) :
    FullWordMaskCertificate regime.rootBound (regime.rootLookup p) := by
  rw [regime.rootLookup_fallback provider hp hpNot]
  exact regime.rootFallbackCertificate

theorem HybridPaperDiagonalRegime.rootLookup_certificate
    (provider : HybridPaperRootCertificateProvider)
    (regime : HybridPaperDiagonalRegime) {p : Nat}
    (hp : p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimes) :
    SquareWordMaskCertificate regime.rootBound p (regime.rootLookup p) := by
  exact provider.maskCertificate regime hp

theorem HybridPaperDiagonalRegime.rootScanPasses
    (provider : HybridPaperRootCertificateProvider)
    (regime : HybridPaperDiagonalRegime) (squareCoset : Bool)
    {k : Nat} (hkLower : 3 ≤ k) (hkUpper : k ≤ 8) :
    hybridPaperRootScanPasses
      regime.rootLookup (regime.rootTarget k) regime.stop
      (k - 1) 1
      Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes
      (regime.rootBaseWords squareCoset) = true :=
  provider.scanPasses regime squareCoset hkLower hkUpper

theorem HybridPaperDiagonalRegime.rootSmallTarget_covers
    (provider : HybridPaperRootCertificateProvider)
    (regime : HybridPaperDiagonalRegime) (squareCoset : Bool)
    {k : Nat} (hk : k ≤ 2) :
    globalMixedCoreCountWords (regime.rootBaseWords squareCoset) ≤
      regime.rootTarget k :=
  provider.smallTargetCovers regime squareCoset hk

#print axioms HybridPaperDiagonalRegime.rootLookup_certificate
#print axioms HybridPaperDiagonalRegime.rootScanPasses
#print axioms HybridPaperDiagonalRegime.rootSmallTarget_covers

end Erdos848
