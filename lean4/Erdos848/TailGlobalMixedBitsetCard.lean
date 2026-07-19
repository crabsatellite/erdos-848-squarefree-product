import Erdos848.TailGlobalMixedSupportWordsPublicBridge
import Erdos848.TailSupportScanChecker

namespace Erdos848

/-! # Cardinality semantics for the generated mixed-support bitsets -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- Set-bit positions represented as a word index and a bit index. -/
def globalMixedBitPairs (words : List ℕ) : Finset (ℕ × ℕ) :=
  ((Finset.range words.length) ×ˢ Finset.range 64).filter fun pair =>
    (words.getD pair.1 0).testBit pair.2

theorem globalMixedCountWords_eq_sum_range (words : List ℕ) :
    globalMixedCountWords words =
      ∑ wordIndex ∈ Finset.range words.length,
        (words.getD wordIndex 0).bits.count true := by
  induction words with
  | nil => simp [globalMixedCountWords]
  | cons head tail ih =>
      rw [globalMixedCountWords]
      rw [show (head :: tail).length = tail.length + 1 by simp]
      rw [Finset.sum_range_succ']
      simp only [List.getD_cons_zero]
      rw [ih]
      rw [add_comm (head.bits.count true)]
      apply congrArg (· + head.bits.count true)
      apply Finset.sum_congr rfl
      intro wordIndex hwordIndex
      simp

/-- The optimized checker count is exactly the cardinality of its finite set
of `(wordIndex, bitIndex)` positions. -/
theorem globalMixedBitPairs_card_eq_countWords
    (words : List ℕ)
    (hwords : ∀ word ∈ words, word < 2 ^ 64) :
    (globalMixedBitPairs words).card = globalMixedCountWords words := by
  have hmaps :
      (globalMixedBitPairs words : Set (ℕ × ℕ)).MapsTo
        Prod.fst (Finset.range words.length) := by
    intro pair hpair
    exact (Finset.mem_product.mp (Finset.mem_filter.mp hpair).1).1
  rw [Finset.card_eq_sum_card_fiberwise hmaps]
  rw [globalMixedCountWords_eq_sum_range]
  apply Finset.sum_congr rfl
  intro wordIndex hwordIndex
  let fibre := (globalMixedBitPairs words).filter fun pair =>
    pair.1 = wordIndex
  let bits := (Finset.range 64).filter fun bitIndex =>
    (words.getD wordIndex 0).testBit bitIndex
  change fibre.card = (words.getD wordIndex 0).bits.count true
  calc
    fibre.card = bits.card := by
      apply Finset.card_bij (fun pair _ => pair.2)
      · intro pair hpair
        have hparts := Finset.mem_filter.mp hpair
        have hbitPair := Finset.mem_filter.mp hparts.1
        have hproduct := Finset.mem_product.mp hbitPair.1
        apply Finset.mem_filter.mpr
        refine ⟨hproduct.2, ?_⟩
        simpa [hparts.2] using hbitPair.2
      · intro left hleft right hright heq
        have hl := (Finset.mem_filter.mp hleft).2
        have hr := (Finset.mem_filter.mp hright).2
        apply Prod.ext
        · exact hl.trans hr.symm
        · exact heq
      · intro bitIndex hbit
        refine ⟨(wordIndex, bitIndex), ?_, rfl⟩
        apply Finset.mem_filter.mpr
        refine ⟨?_, rfl⟩
        apply Finset.mem_filter.mpr
        refine ⟨Finset.mem_product.mpr ⟨hwordIndex,
          (Finset.mem_filter.mp hbit).1⟩, ?_⟩
        exact (Finset.mem_filter.mp hbit).2
    _ = (words.getD wordIndex 0).bits.count true := by
      symm
      apply globalMixedBitsCount_eq_filter_range_of_lt_two_pow
      have hindex := Finset.mem_range.mp hwordIndex
      have hget : words.getD wordIndex 0 = words[wordIndex] :=
        List.getD_eq_getElem words 0 hindex
      rw [hget]
      apply hwords
      simp

/-- Pair-cardinality specialization for the normal checker words. -/
theorem globalMixedNormalBitPairs_card
    (support : List ℕ) (squareCoset : Bool) :
    (globalMixedBitPairs
      (globalMixedNormalSupportWords support squareCoset)).card =
        globalMixedNormalSurvivorCount support squareCoset := by
  unfold globalMixedNormalSurvivorCount
  apply globalMixedBitPairs_card_eq_countWords
  intro word hword
  apply globalMixedCoreSupportWords_lt
    GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords support
    (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords squareCoset)
    (globalMixedNormalCosetWords_lt squareCoset) word
  rw [globalMixedCoreNormalSupportWords_eq_public]
  exact hword

/-- Pair-cardinality specialization for the five-twist checker words. -/
theorem globalMixedTwistBitPairs_card
    (support : List ℕ) (squareCoset : Bool) :
    (globalMixedBitPairs
      (globalMixedTwistSupportWords support squareCoset)).card =
        globalMixedTwistSurvivorCount support squareCoset := by
  unfold globalMixedTwistSurvivorCount
  apply globalMixedBitPairs_card_eq_countWords
  intro word hword
  apply globalMixedCoreSupportWords_lt
    GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords support
    (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords squareCoset)
    (globalMixedTwistCosetWords_lt squareCoset) word
  rw [globalMixedCoreTwistSupportWords_eq_public]
  exact hword

/-- Any finite set of positive parameters whose represented bits are set
injects into the checker's finite `(word,bit)` position set. -/
theorem card_le_globalMixedBitPairs_of_testBit
    (survivors : Finset ℕ) (words : List ℕ)
    (hpos : ∀ m ∈ survivors, 0 < m)
    (hbit : ∀ m ∈ survivors,
      wordMaskTestBit words (m - 1) = true) :
    survivors.card ≤ (globalMixedBitPairs words).card := by
  let encode : ℕ → ℕ × ℕ := fun m => ((m - 1) / 64, (m - 1) % 64)
  have hencode : ∀ m ∈ survivors,
      encode m ∈ globalMixedBitPairs words := by
    intro m hm
    have hmBit := hbit m hm
    have hwordIndex : (m - 1) / 64 < words.length := by
      by_contra hnot
      have hout : words.length ≤ (m - 1) / 64 := by omega
      have hdefault := List.getD_eq_default words 0 hout
      simp only [wordMaskTestBit, hdefault, Nat.zero_testBit] at hmBit
      cases hmBit
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_product.mpr ⟨Finset.mem_range.mpr hwordIndex,
      Finset.mem_range.mpr (Nat.mod_lt _ (by norm_num))⟩, ?_⟩
    simpa [encode, wordMaskTestBit] using hmBit
  have hinjective : Set.InjOn encode survivors := by
    intro a ha b hb hab
    have hdiv : (a - 1) / 64 = (b - 1) / 64 :=
      congrArg Prod.fst hab
    have hmod : (a - 1) % 64 = (b - 1) % 64 :=
      congrArg Prod.snd hab
    have hdecompA := Nat.mod_add_div (a - 1) 64
    have hdecompB := Nat.mod_add_div (b - 1) 64
    have hsub : a - 1 = b - 1 := by omega
    have haPos := hpos a ha
    have hbPos := hpos b hb
    omega
  have hsubset : survivors.image encode ⊆ globalMixedBitPairs words := by
    intro pair hpair
    obtain ⟨m, hm, rfl⟩ := Finset.mem_image.mp hpair
    exact hencode m hm
  calc
    survivors.card = (survivors.image encode).card :=
      (Finset.card_image_iff.mpr hinjective).symm
    _ ≤ (globalMixedBitPairs words).card := Finset.card_le_card hsubset

theorem card_le_globalMixedNormalSurvivorCount
    (survivors : Finset ℕ) (support : List ℕ) (squareCoset : Bool)
    (hpos : ∀ m ∈ survivors, 0 < m)
    (hbit : ∀ m ∈ survivors,
      wordMaskTestBit
        (globalMixedNormalSupportWords support squareCoset) (m - 1) = true) :
    survivors.card ≤ globalMixedNormalSurvivorCount support squareCoset := by
  rw [← globalMixedNormalBitPairs_card support squareCoset]
  exact card_le_globalMixedBitPairs_of_testBit survivors _ hpos hbit

theorem card_le_globalMixedTwistSurvivorCount
    (survivors : Finset ℕ) (support : List ℕ) (squareCoset : Bool)
    (hpos : ∀ m ∈ survivors, 0 < m)
    (hbit : ∀ m ∈ survivors,
      wordMaskTestBit
        (globalMixedTwistSupportWords support squareCoset) (m - 1) = true) :
    survivors.card ≤ globalMixedTwistSurvivorCount support squareCoset := by
  rw [← globalMixedTwistBitPairs_card support squareCoset]
  exact card_le_globalMixedBitPairs_of_testBit survivors _ hpos hbit

#print axioms globalMixedNormalBitPairs_card
#print axioms globalMixedTwistBitPairs_card
#print axioms card_le_globalMixedNormalSurvivorCount
#print axioms card_le_globalMixedTwistSurvivorCount

end Erdos848
