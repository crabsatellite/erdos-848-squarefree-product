import Erdos848.TailGlobalMixedBitsetCard
import Erdos848.TailGlobalMixedSupportWordsSound
import Erdos848.TailTenMillionKernelRootMaskBridge

namespace Erdos848

/-!
# Semantic survivor sets for the twenty-million root checker

For a locally generated lookup, a row and a mod-five coset, the checker
intersects all support masks with one exact base word.  This module relates
the resulting population count to an ordinary finite set of positive
parameters.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def tenMillionKernelRootSupportWords
    (normalLookup twistLookup : Nat → List Nat)
    (row : TenMillionKernelRootRow)
    (squareCoset : Bool) (support : List Nat) : List Nat :=
  globalMixedCoreSupportWords
    (tenMillionKernelRootRowLookup normalLookup twistLookup row) support
    (GeneratedTailTenMillionKernelRootCoverage.rootBaseWords row squareCoset)

theorem tenMillionKernelRootIntersectWords_getD
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
                (globalMixedCoreIntersectWords lefts rights).getD wordIndex 0 =
                  lefts.getD wordIndex 0 &&& rights.getD wordIndex 0
              exact ih rights wordIndex

theorem tenMillionKernelRootIntersectWords_testBit
    (left right : List Nat) (index : Nat) :
    wordMaskTestBit (globalMixedCoreIntersectWords left right) index =
      (wordMaskTestBit left index && wordMaskTestBit right index) := by
  unfold wordMaskTestBit
  rw [tenMillionKernelRootIntersectWords_getD]
  exact Nat.testBit_land _ _ _

private theorem tenMillionKernelRootCoreSupportWords_testBit
    (lookup : Nat → List Nat) (baseWords : List Nat)
    (support : List Nat) (index : Nat) :
    wordMaskTestBit
        (globalMixedCoreSupportWords lookup support baseWords) index =
      ((support.all fun p => wordMaskTestBit (lookup p) index) &&
        wordMaskTestBit baseWords index) := by
  induction support with
  | nil => simp [globalMixedCoreSupportWords]
  | cons p support ih =>
      simp only [globalMixedCoreSupportWords,
        tenMillionKernelRootIntersectWords_testBit, List.all_cons]
      rw [ih]
      simp only [Bool.and_assoc]

theorem tenMillionKernelRootSupportWords_testBit
    (normalLookup twistLookup : Nat → List Nat)
    (row : TenMillionKernelRootRow)
    (squareCoset : Bool) (support : List Nat) (index : Nat) :
    wordMaskTestBit
        (tenMillionKernelRootSupportWords
          normalLookup twistLookup row squareCoset support) index =
      ((support.all fun p =>
          wordMaskTestBit
            (tenMillionKernelRootRowLookup normalLookup twistLookup row p)
            index) &&
        wordMaskTestBit
          (GeneratedTailTenMillionKernelRootCoverage.rootBaseWords
            row squareCoset) index) := by
  exact tenMillionKernelRootCoreSupportWords_testBit
    (tenMillionKernelRootRowLookup normalLookup twistLookup row)
    (GeneratedTailTenMillionKernelRootCoverage.rootBaseWords row squareCoset)
    support index

theorem tenMillionKernelRootBaseWords_lt
    (row : TenMillionKernelRootRow) (squareCoset : Bool) :
    ∀ word ∈
        GeneratedTailTenMillionKernelRootCoverage.rootBaseWords row squareCoset,
      word < 2 ^ 64 := by
  cases row <;> cases squareCoset <;> decide

private theorem tenMillionKernelRootBitPairs_card_eq_coreCountWords
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

def tenMillionKernelRootSurvivorFinset
    (normalLookup twistLookup : Nat → List Nat)
    (row : TenMillionKernelRootRow)
    (squareCoset : Bool) (support : List Nat) : Finset Nat :=
  (Finset.Ico 1 (row.bound + 1)).filter fun m =>
    wordMaskTestBit
      (tenMillionKernelRootSupportWords
        normalLookup twistLookup row squareCoset support)
      (m - 1)

theorem tenMillionKernelRootSurvivorFinset_card_le_coreCount
    (normalLookup twistLookup : Nat → List Nat)
    (row : TenMillionKernelRootRow)
    (squareCoset : Bool) (support : List Nat) :
    (tenMillionKernelRootSurvivorFinset
        normalLookup twistLookup row squareCoset support).card ≤
      tenMillionKernelRootCoreCount
        normalLookup twistLookup
        GeneratedTailTenMillionKernelRootCoverage.rootBaseWords
        row support squareCoset := by
  let words :=
    tenMillionKernelRootSupportWords
      normalLookup twistLookup row squareCoset support
  have hwords : ∀ word ∈ words, word < 2 ^ 64 := by
    exact globalMixedCoreSupportWords_lt
      (tenMillionKernelRootRowLookup normalLookup twistLookup row) support
      (GeneratedTailTenMillionKernelRootCoverage.rootBaseWords row squareCoset)
      (tenMillionKernelRootBaseWords_lt row squareCoset)
  calc
    (tenMillionKernelRootSurvivorFinset
        normalLookup twistLookup row squareCoset support).card ≤
        (globalMixedBitPairs words).card := by
      apply card_le_globalMixedBitPairs_of_testBit
      · intro m hm
        exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1
      · intro m hm
        exact (Finset.mem_filter.mp hm).2
    _ = globalMixedCoreCountWords words :=
      tenMillionKernelRootBitPairs_card_eq_coreCountWords words hwords
    _ = tenMillionKernelRootCoreCount
        normalLookup twistLookup
        GeneratedTailTenMillionKernelRootCoverage.rootBaseWords
        row support squareCoset := rfl

theorem tenMillionKernelRootSurvivorFinset_card_le_ceiling
    {normalLookup twistLookup : Nat → List Nat}
    {supportLength : Nat}
    {support : List Nat}
    (hpass :
      tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup
        GeneratedTailTenMillionKernelRootCoverage.rootBaseWords
        supportLength support = true)
    (row : TenMillionKernelRootRow) (squareCoset : Bool) :
    (tenMillionKernelRootSurvivorFinset
        normalLookup twistLookup row squareCoset support).card ≤
      row.survivorCeiling supportLength := by
  have hrows :=
    tenMillionKernelRootCorePrefixPasses_row hpass row
  exact (tenMillionKernelRootSurvivorFinset_card_le_coreCount
    normalLookup twistLookup row squareCoset support).trans <|
      match squareCoset with
      | false => hrows.1
      | true => hrows.2

theorem mem_tenMillionKernelRootNormalSurvivorFinset_of_conditions
    {normalLookup twistLookup : Nat → List Nat}
    {row : TenMillionKernelRootRow}
    {squareCoset : Bool} {support : List Nat} {m : Nat}
    (hrow : row.isTwist = false)
    (hm : 1 ≤ m) (hmBound : m ≤ row.bound)
    (hquotient : row.quotientAccepts m = true)
    (hcoset : modFiveCosetAccepts squareCoset m = true)
    (hmaskPass :
      ∀ p ∈ support,
        tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true)
    (hsquares :
      ∀ p ∈ support, ¬ p ∣ m ∧ ∃ root, root ^ 2 ≡ m [MOD p]) :
    m ∈ tenMillionKernelRootSurvivorFinset
      normalLookup twistLookup row squareCoset support := by
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_Ico.mpr ⟨hm, by omega⟩, ?_⟩
  rw [tenMillionKernelRootSupportWords_testBit]
  apply Bool.and_eq_true_iff.mpr
  constructor
  · apply List.all_eq_true.mpr
    intro p hp
    obtain ⟨hnotDvd, root, hsquare⟩ := hsquares p hp
    have hlookup :
        tenMillionKernelRootRowLookup
            normalLookup twistLookup row p =
          normalLookup p := by
      simp [tenMillionKernelRootRowLookup, hrow]
    rw [hlookup]
    exact tenMillionKernelRootNormalMask_contains_square
      (hmaskPass p hp) hm
      (hmBound.trans (TenMillionKernelRootRow.bound_le_max row))
      hnotDvd hsquare
  · rw [tenMillionKernelRootBaseWords_testBit_of_row_bound
      row squareCoset hm hmBound]
    exact Bool.and_eq_true_iff.mpr ⟨hquotient, hcoset⟩

theorem mem_tenMillionKernelRootTwistSurvivorFinset_of_conditions
    {normalLookup twistLookup : Nat → List Nat}
    {row : TenMillionKernelRootRow}
    {squareCoset : Bool} {support : List Nat} {m : Nat}
    (hrow : row.isTwist = true)
    (hm : 1 ≤ m) (hmBound : m ≤ row.bound)
    (hquotient : row.quotientAccepts m = true)
    (hcoset : modFiveCosetAccepts squareCoset m = true)
    (hmaskPass :
      ∀ p ∈ support,
        tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true)
    (hpUpper :
      ∀ p ∈ support, p ≤ tenMillionKernelRootNormalMaskBound)
    (hsquares :
      ∀ p ∈ support,
        ¬ p ∣ 5 * m ∧ ∃ root, root ^ 2 ≡ 5 * m [MOD p]) :
    m ∈ tenMillionKernelRootSurvivorFinset
      normalLookup twistLookup row squareCoset support := by
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_Ico.mpr ⟨hm, by omega⟩, ?_⟩
  rw [tenMillionKernelRootSupportWords_testBit]
  apply Bool.and_eq_true_iff.mpr
  constructor
  · apply List.all_eq_true.mpr
    intro p hp
    obtain ⟨hnotDvd, root, hsquare⟩ := hsquares p hp
    have hlookup :
        tenMillionKernelRootRowLookup
            normalLookup twistLookup row p =
          twistLookup p := by
      simp [tenMillionKernelRootRowLookup, hrow]
    rw [hlookup]
    exact tenMillionKernelRootTwistMask_contains_square
      (hmaskPass p hp) (hpUpper p hp) hm
      (hmBound.trans (TenMillionKernelRootRow.bound_le_max row))
      hnotDvd hsquare
  · rw [tenMillionKernelRootBaseWords_testBit_of_row_bound
      row squareCoset hm hmBound]
    exact Bool.and_eq_true_iff.mpr ⟨hquotient, hcoset⟩

#print axioms tenMillionKernelRootSurvivorFinset_card_le_ceiling
#print axioms mem_tenMillionKernelRootNormalSurvivorFinset_of_conditions
#print axioms mem_tenMillionKernelRootTwistSurvivorFinset_of_conditions

end Erdos848
