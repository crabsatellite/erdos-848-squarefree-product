import Erdos848.TailHybridPaperTwistCertificateABI
import Erdos848.TailGlobalMixedBitsetCard
import Erdos848.TailFiveMillionReciprocal

namespace Erdos848

/-! # Semantic survivor sets for the four hybrid paper root blocks -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem hybridPaperRootIntersectWords_getD
    (left right : List Nat) (wordIndex : Nat) :
    (globalMixedCoreIntersectWords left right).getD wordIndex 0 =
      left.getD wordIndex 0 &&& right.getD wordIndex 0 := by
  induction left generalizing right wordIndex with
  | nil => simp [globalMixedCoreIntersectWords]
  | cons left lefts ih =>
      cases right with
      | nil => simp [globalMixedCoreIntersectWords]
      | cons right rights =>
          cases wordIndex with
          | zero => simp [globalMixedCoreIntersectWords]
          | succ wordIndex =>
              change
                (globalMixedCoreIntersectWords lefts rights).getD
                    wordIndex 0 =
                  lefts.getD wordIndex 0 &&& rights.getD wordIndex 0
              exact ih rights wordIndex

theorem hybridPaperRootIntersectWords_testBit
    (left right : List Nat) (index : Nat) :
    wordMaskTestBit (globalMixedCoreIntersectWords left right) index =
      (wordMaskTestBit left index && wordMaskTestBit right index) := by
  unfold wordMaskTestBit
  rw [hybridPaperRootIntersectWords_getD]
  exact Nat.testBit_land _ _ _

theorem hybridPaperRootSupportWords_testBit
    (lookup : Nat → List Nat) (support baseWords : List Nat)
    (index : Nat) :
    wordMaskTestBit
        (hybridPaperRootSupportWords lookup support baseWords) index =
      ((support.all fun p => wordMaskTestBit (lookup p) index) &&
        wordMaskTestBit baseWords index) := by
  induction support generalizing baseWords with
  | nil => simp [hybridPaperRootSupportWords]
  | cons p support ih =>
      simp only [hybridPaperRootSupportWords,
        hybridPaperRootIntersectWords_testBit, List.all_cons]
      rw [ih]
      rw [hybridPaperRootIntersectWords_testBit]
      simp only [Bool.and_assoc, Bool.and_left_comm]

theorem hybridPaperRootSupportWords_lt
    (lookup : Nat → List Nat) (support baseWords : List Nat)
    (hbase : ∀ word ∈ baseWords, word < 2 ^ 64) :
    ∀ word ∈ hybridPaperRootSupportWords lookup support baseWords,
      word < 2 ^ 64 := by
  induction support generalizing baseWords with
  | nil => exact hbase
  | cons p support ih =>
      simp only [hybridPaperRootSupportWords]
      exact ih _
        (globalMixedCoreIntersectWords_lt (lookup p) baseWords hbase)

private theorem hybridPaperRootBitPairs_card_eq_coreCountWords
    (words : List Nat)
    (hwords : ∀ word ∈ words, word < 2 ^ 64) :
    (globalMixedBitPairs words).card = globalMixedCoreCountWords words := by
  rw [globalMixedBitPairs_card_eq_countWords words hwords]
  rw [globalMixedCoreCountWords_eq_map_bits_count words hwords]
  clear hwords
  induction words with
  | nil => rfl
  | cons word words ih =>
      simp [globalMixedCountWords, ih]

def hybridPaperRootSurvivorFinset
    (lookup : Nat → List Nat)
    (regime : HybridPaperDiagonalRegime)
    (squareCoset : Bool) (support : List Nat) : Finset Nat :=
  (Finset.Ico 1 (regime.rootBound + 1)).filter fun m =>
    wordMaskTestBit
      (hybridPaperRootSupportWords lookup support
        (regime.rootBaseWords squareCoset))
      (m - 1)

theorem hybridPaperRootSurvivorFinset_card_le_coreCount
    (normalProvider : HybridPaperRootCertificateProvider)
    (lookup : Nat → List Nat)
    (regime : HybridPaperDiagonalRegime)
    (squareCoset : Bool) (support : List Nat) :
    (hybridPaperRootSurvivorFinset
        lookup regime squareCoset support).card ≤
      globalMixedCoreCountWords
        (hybridPaperRootSupportWords lookup support
          (regime.rootBaseWords squareCoset)) := by
  let words :=
    hybridPaperRootSupportWords lookup support
      (regime.rootBaseWords squareCoset)
  have hwords : ∀ word ∈ words, word < 2 ^ 64 :=
    hybridPaperRootSupportWords_lt lookup support
      (regime.rootBaseWords squareCoset)
      (normalProvider.baseWords_lt regime squareCoset)
  calc
    (hybridPaperRootSurvivorFinset
        lookup regime squareCoset support).card ≤
        (globalMixedBitPairs words).card := by
      apply card_le_globalMixedBitPairs_of_testBit
      · intro m hm
        exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1
      · intro m hm
        exact (Finset.mem_filter.mp hm).2
    _ = globalMixedCoreCountWords words :=
      hybridPaperRootBitPairs_card_eq_coreCountWords words hwords

theorem hybridPaperNormalRootSurvivorFinset_card_le_target
    (normalProvider : HybridPaperRootCertificateProvider)
    (regime : HybridPaperDiagonalRegime)
    (squareCoset : Bool) (support : List Nat)
    (hLength : support.length ≤ 8)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hFinite : support.prod < regime.stop) :
    (hybridPaperRootSurvivorFinset
        regime.rootLookup regime squareCoset support.dropLast).card ≤
      regime.rootTarget support.length := by
  exact
    (hybridPaperRootSurvivorFinset_card_le_coreCount
      normalProvider regime.rootLookup
        regime squareCoset support.dropLast).trans
      (hybridPaperActualSupportWords_count_le_target
        normalProvider regime squareCoset support
        hLength hPrimes hIncreasing hFinite)

theorem hybridPaperTwistRootSurvivorFinset_card_le_target
    (provider : HybridPaperTwistCertificateProvider)
    (normalProvider : HybridPaperRootCertificateProvider)
    (regime : HybridPaperDiagonalRegime)
    (squareCoset : Bool) (support : List Nat)
    (hLength : support.length ≤ 8)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hFinite : support.prod < regime.stop) :
    (hybridPaperRootSurvivorFinset
        (provider.lookup regime) regime squareCoset support.dropLast).card ≤
      regime.rootTarget support.length := by
  exact
    (hybridPaperRootSurvivorFinset_card_le_coreCount
      normalProvider (provider.lookup regime)
        regime squareCoset support.dropLast).trans
      (provider.actualSupportWords_count_le_target
        normalProvider regime squareCoset support
        hLength hPrimes hIncreasing hFinite)

theorem mem_hybridPaperNormalRootSurvivorFinset_of_conditions
    (normalProvider : HybridPaperRootCertificateProvider)
    {regime : HybridPaperDiagonalRegime}
    {squareCoset : Bool} {support : List Nat} {m : Nat}
    (hm : 1 ≤ m) (hmBound : m ≤ regime.rootBound)
    (hcoset : modFiveCosetAccepts squareCoset m = true)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hsquares :
      ∀ p ∈ support, ¬ p ∣ m ∧ ∃ root, root ^ 2 ≡ m [MOD p]) :
    m ∈ hybridPaperRootSurvivorFinset
      regime.rootLookup regime squareCoset support := by
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_Ico.mpr ⟨hm, by omega⟩, ?_⟩
  rw [hybridPaperRootSupportWords_testBit]
  apply Bool.and_eq_true_iff.mpr
  constructor
  · apply List.all_eq_true.mpr
    intro p hp
    obtain ⟨hnotDvd, root, hsquare⟩ := hsquares p hp
    by_cases hpMask :
        p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimes
    · exact
        SquareWordMaskCertificate.testBit_eq_true_of_modEq_square
          (regime.rootLookup_certificate normalProvider hpMask)
          hm hmBound hnotDvd hsquare
    · exact
        FullWordMaskCertificate.testBit_eq_true
          (HybridPaperDiagonalRegime.rootLookup_fallbackCertificate
            normalProvider regime (hPrimes p hp) hpMask)
          (index := m - 1) (by omega)
  · exact
      ModFiveCosetWordMaskCertificate.testBit_eq_true
        (normalProvider.baseCertificate regime squareCoset)
        hm hmBound hcoset

theorem mem_hybridPaperTwistRootSurvivorFinset_of_conditions
    (provider : HybridPaperTwistCertificateProvider)
    (normalProvider : HybridPaperRootCertificateProvider)
    {regime : HybridPaperDiagonalRegime}
    {squareCoset : Bool} {support : List Nat} {m : Nat}
    (hm : 1 ≤ m) (hmBound : m ≤ regime.rootBound)
    (hcoset : modFiveCosetAccepts squareCoset m = true)
    (hpTable :
      ∀ p ∈ support,
        p ∈ Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes)
    (hsquares :
      ∀ p ∈ support,
        ¬ p ∣ 5 * m ∧ ∃ root, root ^ 2 ≡ 5 * m [MOD p]) :
    m ∈ hybridPaperRootSurvivorFinset
      (provider.lookup regime) regime squareCoset support := by
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_Ico.mpr ⟨hm, by omega⟩, ?_⟩
  rw [hybridPaperRootSupportWords_testBit]
  apply Bool.and_eq_true_iff.mpr
  constructor
  · apply List.all_eq_true.mpr
    intro p hp
    obtain ⟨hnotDvd, root, hsquare⟩ := hsquares p hp
    exact provider.contains_square normalProvider regime
      (hpTable p hp) hm hmBound hnotDvd hsquare
  · exact
      ModFiveCosetWordMaskCertificate.testBit_eq_true
        (normalProvider.baseCertificate regime squareCoset)
        hm hmBound hcoset

theorem hybridPaperRootSurvivorFinset_subset_coset
    (normalProvider : HybridPaperRootCertificateProvider)
    (lookup : Nat → List Nat)
    (regime : HybridPaperDiagonalRegime)
    (squareCoset : Bool) (support : List Nat) :
    hybridPaperRootSurvivorFinset
      lookup regime squareCoset support ⊆
      modFiveCosetBlock squareCoset 1 regime.rootBound := by
  intro m hm
  have hparts := Finset.mem_filter.mp hm
  have hmIco := Finset.mem_Ico.mp hparts.1
  have hbit := hparts.2
  rw [hybridPaperRootSupportWords_testBit] at hbit
  have hbaseBit := (Bool.and_eq_true_iff.mp hbit).2
  have hcoset :
      modFiveCosetAccepts squareCoset m = true := by
    rw [← ModFiveCosetWordMaskCertificate.testBit_eq_accepts
      (normalProvider.baseCertificate regime squareCoset)
      hmIco.1 (by omega)]
    exact hbaseBit
  apply Finset.mem_filter.mpr
  exact ⟨Finset.mem_Ico.mpr ⟨hmIco.1, by omega⟩, hcoset⟩

#print axioms hybridPaperNormalRootSurvivorFinset_card_le_target
#print axioms hybridPaperTwistRootSurvivorFinset_card_le_target
#print axioms mem_hybridPaperNormalRootSurvivorFinset_of_conditions
#print axioms mem_hybridPaperTwistRootSurvivorFinset_of_conditions

end Erdos848
