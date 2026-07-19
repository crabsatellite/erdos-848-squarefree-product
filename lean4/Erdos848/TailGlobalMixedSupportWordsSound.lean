import Erdos848.TailGlobalMixedWordCountSound

namespace Erdos848

/-!
# List-level soundness for the fixed-cut mixed support words

The generated leaves evaluate a fast recursive word intersection.  This file
lifts the kernel-only one-word population-count theorem to those word lists.
The crucial bound is inherited from the right-hand coset words, since bitwise
intersection never increases a word.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem globalMixedCoreCountWords_eq_map_bits_count
    (words : List ℕ)
    (hwords : ∀ word ∈ words, word < 2 ^ 64) :
    globalMixedCoreCountWords words =
      (words.map fun word => word.bits.count true).sum := by
  induction words with
  | nil => rfl
  | cons word words ih =>
      simp only [globalMixedCoreCountWords, List.map_cons, List.sum_cons]
      rw [globalMixedCoreWordCount_eq_bits_count (hwords word (by simp))]
      rw [ih]
      intro tail htail
      exact hwords tail (by simp [htail])

theorem globalMixedCoreIntersectWords_lt
    {bound : ℕ} (left right : List ℕ)
    (hright : ∀ word ∈ right, word < bound) :
    ∀ word ∈ globalMixedCoreIntersectWords left right, word < bound := by
  induction left generalizing right with
  | nil => simp [globalMixedCoreIntersectWords]
  | cons left lefts ih =>
      cases right with
      | nil => simp [globalMixedCoreIntersectWords]
      | cons right rights =>
          intro word hword
          simp only [globalMixedCoreIntersectWords, List.mem_cons] at hword
          rcases hword with rfl | hword
          · exact lt_of_le_of_lt Nat.and_le_right
              (hright right (by simp))
          · exact ih rights
              (fun tail htail => hright tail (by simp [htail]))
              word hword

theorem globalMixedCoreSupportWords_lt
    {bound : ℕ} (lookup : ℕ → List ℕ) (support cosetWords : List ℕ)
    (hcoset : ∀ word ∈ cosetWords, word < bound) :
    ∀ word ∈ globalMixedCoreSupportWords lookup support cosetWords,
      word < bound := by
  induction support with
  | nil => simpa [globalMixedCoreSupportWords] using hcoset
  | cons p support ih =>
      simp only [globalMixedCoreSupportWords]
      exact globalMixedCoreIntersectWords_lt _ _ ih

theorem globalMixedCoreSupportWordPair_eq
    (lookup : ℕ → List ℕ) (support falseWords trueWords : List ℕ) :
    globalMixedCoreSupportWordPair lookup support falseWords trueWords =
      (globalMixedCoreSupportWords lookup support falseWords,
        globalMixedCoreSupportWords lookup support trueWords) := by
  induction support with
  | nil => rfl
  | cons p support ih =>
      simp only [globalMixedCoreSupportWordPair,
        globalMixedCoreSupportWords, ih]

theorem globalMixedCoreSupportWords_congr
    (lookup₁ lookup₂ : ℕ → List ℕ) (support cosetWords : List ℕ)
    (hlookup : ∀ p ∈ support, lookup₁ p = lookup₂ p) :
    globalMixedCoreSupportWords lookup₁ support cosetWords =
      globalMixedCoreSupportWords lookup₂ support cosetWords := by
  induction support with
  | nil => rfl
  | cons p support ih =>
      simp only [globalMixedCoreSupportWords]
      rw [hlookup p (by simp)]
      congr 1
      exact ih (fun q hq => hlookup q (by simp [hq]))

theorem globalMixedCoreSupportWordPair_congr
    (lookup₁ lookup₂ : ℕ → List ℕ)
    (support falseWords trueWords : List ℕ)
    (hlookup : ∀ p ∈ support, lookup₁ p = lookup₂ p) :
    globalMixedCoreSupportWordPair lookup₁ support falseWords trueWords =
      globalMixedCoreSupportWordPair lookup₂ support falseWords trueWords := by
  rw [globalMixedCoreSupportWordPair_eq,
    globalMixedCoreSupportWordPair_eq]
  rw [globalMixedCoreSupportWords_congr lookup₁ lookup₂ support falseWords
      hlookup,
    globalMixedCoreSupportWords_congr lookup₁ lookup₂ support trueWords
      hlookup]

theorem globalMixedCoreSurvivorCount_congr
    (lookup₁ lookup₂ : ℕ → List ℕ) (cosetWords support : List ℕ)
    (hlookup : ∀ p ∈ support, lookup₁ p = lookup₂ p) :
    globalMixedCoreSurvivorCount lookup₁ cosetWords support =
      globalMixedCoreSurvivorCount lookup₂ cosetWords support := by
  unfold globalMixedCoreSurvivorCount
  rw [globalMixedCoreSupportWords_congr lookup₁ lookup₂ support cosetWords
    hlookup]

theorem globalMixedCoreSurvivorCounts_congr
    (lookup₁ lookup₂ : ℕ → List ℕ)
    (falseWords trueWords support : List ℕ)
    (hlookup : ∀ p ∈ support, lookup₁ p = lookup₂ p) :
    globalMixedCoreSurvivorCounts lookup₁ falseWords trueWords support =
      globalMixedCoreSurvivorCounts lookup₂ falseWords trueWords support := by
  unfold globalMixedCoreSurvivorCounts
  rw [globalMixedCoreSupportWordPair_congr lookup₁ lookup₂ support
    falseWords trueWords hlookup]

theorem globalMixedNormalCosetWords_lt (squareCoset : Bool) :
    ∀ word ∈
        GeneratedTailGlobalMixedSupportCoverage.normalCosetWords squareCoset,
      word < 2 ^ 64 := by
  cases squareCoset <;> decide

theorem globalMixedTwistCosetWords_lt (squareCoset : Bool) :
    ∀ word ∈
        GeneratedTailGlobalMixedSupportCoverage.twistCosetWords squareCoset,
      word < 2 ^ 64 := by
  cases squareCoset <;> decide

theorem globalMixedCoreSurvivorCount_eq_map_bits_count
    (lookup : ℕ → List ℕ) (cosetWords support : List ℕ)
    (hcoset : ∀ word ∈ cosetWords, word < 2 ^ 64) :
    globalMixedCoreSurvivorCount lookup cosetWords support =
      ((globalMixedCoreSupportWords lookup support cosetWords).map
        fun word => word.bits.count true).sum := by
  unfold globalMixedCoreSurvivorCount
  exact globalMixedCoreCountWords_eq_map_bits_count _
    (globalMixedCoreSupportWords_lt lookup support cosetWords hcoset)

theorem globalMixedCoreNormalSurvivorCount_eq_map_bits_count
    (lookup : ℕ → List ℕ) (support : List ℕ) (squareCoset : Bool) :
    globalMixedCoreSurvivorCount lookup
        (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords squareCoset)
        support =
      ((globalMixedCoreSupportWords lookup support
          (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords
            squareCoset)).map
        fun word => word.bits.count true).sum :=
  globalMixedCoreSurvivorCount_eq_map_bits_count _ _ _
    (globalMixedNormalCosetWords_lt squareCoset)

theorem globalMixedCoreTwistSurvivorCount_eq_map_bits_count
    (lookup : ℕ → List ℕ) (support : List ℕ) (squareCoset : Bool) :
    globalMixedCoreSurvivorCount lookup
        (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords squareCoset)
        support =
      ((globalMixedCoreSupportWords lookup support
          (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords
            squareCoset)).map
        fun word => word.bits.count true).sum :=
  globalMixedCoreSurvivorCount_eq_map_bits_count _ _ _
    (globalMixedTwistCosetWords_lt squareCoset)

theorem globalMixedCoreSurvivorCounts_eq_map_bits_count
    (lookup : ℕ → List ℕ) (falseWords trueWords support : List ℕ)
    (hfalse : ∀ word ∈ falseWords, word < 2 ^ 64)
    (htrue : ∀ word ∈ trueWords, word < 2 ^ 64) :
    globalMixedCoreSurvivorCounts lookup falseWords trueWords support =
      (((globalMixedCoreSupportWords lookup support falseWords).map
          fun word => word.bits.count true).sum,
        ((globalMixedCoreSupportWords lookup support trueWords).map
          fun word => word.bits.count true).sum) := by
  unfold globalMixedCoreSurvivorCounts
  rw [globalMixedCoreSupportWordPair_eq]
  simp only
  rw [globalMixedCoreCountWords_eq_map_bits_count _
      (globalMixedCoreSupportWords_lt lookup support falseWords hfalse),
    globalMixedCoreCountWords_eq_map_bits_count _
      (globalMixedCoreSupportWords_lt lookup support trueWords htrue)]

#print axioms globalMixedCoreSurvivorCounts_eq_map_bits_count

end Erdos848
