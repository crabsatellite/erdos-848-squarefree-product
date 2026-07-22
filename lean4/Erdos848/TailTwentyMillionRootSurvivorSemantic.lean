import Erdos848.TailGlobalMixedBitsetCard
import Erdos848.TailGlobalMixedSupportWordsSound
import Erdos848.TailTwentyMillionRootMaskBridge

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

def twentyMillionRootSupportWords
    (normalLookup twistLookup : Nat → List Nat)
    (row : TwentyMillionRootRow)
    (squareCoset : Bool) (support : List Nat) : List Nat :=
  globalMixedCoreSupportWords
    (twentyMillionRootRowLookup normalLookup twistLookup row) support
    (GeneratedTailTwentyMillionRootCoverage.rootBaseWords row squareCoset)

theorem twentyMillionRootIntersectWords_getD
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

theorem twentyMillionRootIntersectWords_testBit
    (left right : List Nat) (index : Nat) :
    wordMaskTestBit (globalMixedCoreIntersectWords left right) index =
      (wordMaskTestBit left index && wordMaskTestBit right index) := by
  unfold wordMaskTestBit
  rw [twentyMillionRootIntersectWords_getD]
  exact Nat.testBit_land _ _ _

private theorem twentyMillionRootCoreSupportWords_testBit
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
        twentyMillionRootIntersectWords_testBit, List.all_cons]
      rw [ih]
      simp only [Bool.and_assoc]

theorem twentyMillionRootSupportWords_testBit
    (normalLookup twistLookup : Nat → List Nat)
    (row : TwentyMillionRootRow)
    (squareCoset : Bool) (support : List Nat) (index : Nat) :
    wordMaskTestBit
        (twentyMillionRootSupportWords
          normalLookup twistLookup row squareCoset support) index =
      ((support.all fun p =>
          wordMaskTestBit
            (twentyMillionRootRowLookup normalLookup twistLookup row p)
            index) &&
        wordMaskTestBit
          (GeneratedTailTwentyMillionRootCoverage.rootBaseWords
            row squareCoset) index) := by
  exact twentyMillionRootCoreSupportWords_testBit
    (twentyMillionRootRowLookup normalLookup twistLookup row)
    (GeneratedTailTwentyMillionRootCoverage.rootBaseWords row squareCoset)
    support index

theorem twentyMillionRootBaseWords_lt
    (row : TwentyMillionRootRow) (squareCoset : Bool) :
    ∀ word ∈
        GeneratedTailTwentyMillionRootCoverage.rootBaseWords row squareCoset,
      word < 2 ^ 64 := by
  cases row <;> cases squareCoset <;> decide

private theorem twentyMillionRootBitPairs_card_eq_coreCountWords
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

def twentyMillionRootSurvivorFinset
    (normalLookup twistLookup : Nat → List Nat)
    (row : TwentyMillionRootRow)
    (squareCoset : Bool) (support : List Nat) : Finset Nat :=
  (Finset.Ico 1 (row.bound + 1)).filter fun m =>
    wordMaskTestBit
      (twentyMillionRootSupportWords
        normalLookup twistLookup row squareCoset support)
      (m - 1)

theorem twentyMillionRootSurvivorFinset_card_le_coreCount
    (normalLookup twistLookup : Nat → List Nat)
    (row : TwentyMillionRootRow)
    (squareCoset : Bool) (support : List Nat) :
    (twentyMillionRootSurvivorFinset
        normalLookup twistLookup row squareCoset support).card ≤
      twentyMillionRootCoreCount
        normalLookup twistLookup
        GeneratedTailTwentyMillionRootCoverage.rootBaseWords
        row support squareCoset := by
  let words :=
    twentyMillionRootSupportWords
      normalLookup twistLookup row squareCoset support
  have hwords : ∀ word ∈ words, word < 2 ^ 64 := by
    exact globalMixedCoreSupportWords_lt
      (twentyMillionRootRowLookup normalLookup twistLookup row) support
      (GeneratedTailTwentyMillionRootCoverage.rootBaseWords row squareCoset)
      (twentyMillionRootBaseWords_lt row squareCoset)
  calc
    (twentyMillionRootSurvivorFinset
        normalLookup twistLookup row squareCoset support).card ≤
        (globalMixedBitPairs words).card := by
      apply card_le_globalMixedBitPairs_of_testBit
      · intro m hm
        exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1
      · intro m hm
        exact (Finset.mem_filter.mp hm).2
    _ = globalMixedCoreCountWords words :=
      twentyMillionRootBitPairs_card_eq_coreCountWords words hwords
    _ = twentyMillionRootCoreCount
        normalLookup twistLookup
        GeneratedTailTwentyMillionRootCoverage.rootBaseWords
        row support squareCoset := rfl

theorem twentyMillionRootSurvivorFinset_card_le_ceiling
    {normalLookup twistLookup : Nat → List Nat}
    {supportLength : Nat}
    {support : List Nat}
    (hpass :
      twentyMillionRootCorePrefixPasses
        normalLookup twistLookup
        GeneratedTailTwentyMillionRootCoverage.rootBaseWords
        supportLength support = true)
    (row : TwentyMillionRootRow) (squareCoset : Bool) :
    (twentyMillionRootSurvivorFinset
        normalLookup twistLookup row squareCoset support).card ≤
      row.survivorCeiling supportLength := by
  have hrows :=
    twentyMillionRootCorePrefixPasses_row hpass row
  exact (twentyMillionRootSurvivorFinset_card_le_coreCount
    normalLookup twistLookup row squareCoset support).trans <|
      match squareCoset with
      | false => hrows.1
      | true => hrows.2

theorem mem_twentyMillionRootNormalSurvivorFinset_of_conditions
    {normalLookup twistLookup : Nat → List Nat}
    {row : TwentyMillionRootRow}
    {squareCoset : Bool} {support : List Nat} {m : Nat}
    (hrow : row.isTwist = false)
    (hm : 1 ≤ m) (hmBound : m ≤ row.bound)
    (hquotient : row.quotientAccepts m = true)
    (hcoset : modFiveCosetAccepts squareCoset m = true)
    (hmaskPass :
      ∀ p ∈ support,
        twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true)
    (hsquares :
      ∀ p ∈ support, ¬ p ∣ m ∧ ∃ root, root ^ 2 ≡ m [MOD p]) :
    m ∈ twentyMillionRootSurvivorFinset
      normalLookup twistLookup row squareCoset support := by
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_Ico.mpr ⟨hm, by omega⟩, ?_⟩
  rw [twentyMillionRootSupportWords_testBit]
  apply Bool.and_eq_true_iff.mpr
  constructor
  · apply List.all_eq_true.mpr
    intro p hp
    obtain ⟨hnotDvd, root, hsquare⟩ := hsquares p hp
    have hlookup :
        twentyMillionRootRowLookup
            normalLookup twistLookup row p =
          normalLookup p := by
      simp [twentyMillionRootRowLookup, hrow]
    rw [hlookup]
    exact twentyMillionRootNormalMask_contains_square
      (hmaskPass p hp) hm
      (hmBound.trans (TwentyMillionRootRow.bound_le_max row))
      hnotDvd hsquare
  · rw [twentyMillionRootBaseWords_testBit_of_row_bound
      row squareCoset hm hmBound]
    exact Bool.and_eq_true_iff.mpr ⟨hquotient, hcoset⟩

theorem mem_twentyMillionRootTwistSurvivorFinset_of_conditions
    {normalLookup twistLookup : Nat → List Nat}
    {row : TwentyMillionRootRow}
    {squareCoset : Bool} {support : List Nat} {m : Nat}
    (hrow : row.isTwist = true)
    (hm : 1 ≤ m) (hmBound : m ≤ row.bound)
    (hquotient : row.quotientAccepts m = true)
    (hcoset : modFiveCosetAccepts squareCoset m = true)
    (hmaskPass :
      ∀ p ∈ support,
        twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true)
    (hpUpper :
      ∀ p ∈ support, p ≤ twentyMillionRootNormalMaskBound)
    (hsquares :
      ∀ p ∈ support,
        ¬ p ∣ 5 * m ∧ ∃ root, root ^ 2 ≡ 5 * m [MOD p]) :
    m ∈ twentyMillionRootSurvivorFinset
      normalLookup twistLookup row squareCoset support := by
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_Ico.mpr ⟨hm, by omega⟩, ?_⟩
  rw [twentyMillionRootSupportWords_testBit]
  apply Bool.and_eq_true_iff.mpr
  constructor
  · apply List.all_eq_true.mpr
    intro p hp
    obtain ⟨hnotDvd, root, hsquare⟩ := hsquares p hp
    have hlookup :
        twentyMillionRootRowLookup
            normalLookup twistLookup row p =
          twistLookup p := by
      simp [twentyMillionRootRowLookup, hrow]
    rw [hlookup]
    exact twentyMillionRootTwistMask_contains_square
      (hmaskPass p hp) (hpUpper p hp) hm
      (hmBound.trans (TwentyMillionRootRow.bound_le_max row))
      hnotDvd hsquare
  · rw [twentyMillionRootBaseWords_testBit_of_row_bound
      row squareCoset hm hmBound]
    exact Bool.and_eq_true_iff.mpr ⟨hquotient, hcoset⟩

#print axioms twentyMillionRootSurvivorFinset_card_le_ceiling
#print axioms mem_twentyMillionRootNormalSurvivorFinset_of_conditions
#print axioms mem_twentyMillionRootTwistSurvivorFinset_of_conditions

end Erdos848
