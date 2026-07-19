import Erdos848.TailFiveMillionFiveTwistCore
import Erdos848.GeneratedTailSupportCoverage.Certificate
import Mathlib.Data.List.GetD
import Mathlib.Data.Nat.Bitwise
import Mathlib.Data.Nat.Size

namespace Erdos848

/-- The low bit of each pair is set.  Since quotient index `i` stores
`m = i + 1`, this mask keeps exactly the odd complementary quotients. -/
def oddIndexWordMask : ℕ := 6_148_914_691_236_517_205

def countOddRootSupportOddWords
    (support : List ℕ) (squareCoset : Bool) (start : ℕ) : ℕ → ℕ
  | 0 => 0
  | count + 1 =>
      ((oddRootSupportWord support squareCoset start) &&&
        oddIndexWordMask).bits.count true +
      countOddRootSupportOddWords support squareCoset (start + 1) count

/-- Optimized popcount of the odd accepted quotients `1 ≤ m ≤ bound`. -/
def oddRootWordSurvivorCountThrough
    (support : List ℕ) (squareCoset : Bool) (bound : ℕ) : ℕ :=
  let fullWords := bound / 64
  let remaining := bound % 64
  countOddRootSupportOddWords support squareCoset 0 fullWords +
    if remaining = 0 then 0
    else
      (((oddRootSupportWord support squareCoset fullWords) &&&
          oddIndexWordMask) %
        2 ^ remaining).bits.count true

def oddRootWordOddPointAccepts
    (support : List ℕ) (squareCoset : Bool) (m : ℕ) : Bool :=
  decide (m % 2 = 1) && oddRootWordPointAccepts support squareCoset m

/-!
# Exact bridge from 64-bit support words to literal survivor counts

The generated normal-support certificates count set bits in thirty-eight
64-bit words.  This file proves, in the kernel, that this word count is exactly
the number of accepted complementary quotients `m = 1, ..., 2401`.  The last
word has only thirty-three live bits; its unused high bits are proved zero.
-/

/-- Count a Boolean predicate on a literal interval as a finite sum. -/
theorem countNatRange_eq_sum_Ico
    (predicate : ℕ → Bool) (start : ℕ) :
    ∀ count,
      countNatRange predicate start count =
        ∑ m ∈ Finset.Ico start (start + count),
          if predicate m then 1 else 0 := by
  intro count
  induction count generalizing start with
  | zero => simp [countNatRange]
  | succ count ih =>
      rw [countNatRange]
      rw [Finset.sum_eq_sum_Ico_succ_bot (by omega)]
      rw [ih (start := start + 1)]
      simp [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]

/-- Count a Boolean predicate on a literal interval as a filtered card. -/
theorem countNatRange_eq_card_filter_Ico
    (predicate : ℕ → Bool) (start count : ℕ) :
    countNatRange predicate start count =
      ((Finset.Ico start (start + count)).filter fun m => predicate m).card := by
  rw [countNatRange_eq_sum_Ico]
  classical
  simp

private theorem bits_count_eq_filter_fin (word : ℕ) :
    word.bits.count true =
      (Finset.univ.filter fun i : Fin word.bits.length =>
        word.testBit i).card := by
  have h := Fin.card_filter_univ_eq_vector_get_eq_count true
    (v := ⟨word.bits, rfl⟩)
  have h' :
      (Finset.univ.filter fun i : Fin word.bits.length =>
        List.Vector.get
          (⟨word.bits, rfl⟩ : List.Vector Bool word.bits.length) i = true).card =
        word.bits.count true := by
    simpa using h
  rw [← h']
  apply congrArg Finset.card
  ext i
  simp only [Finset.mem_filter, Finset.mem_univ, true_and]
  rw [Nat.testBit_eq_inth]
  have hi := List.getI_eq_getElem (l := word.bits) i.isLt
  change word.bits[i] = true ↔ word.bits.getI i = true
  rw [hi]
  rfl

private theorem bits_count_eq_filter_range_of_lt_two_pow
    {word width : ℕ} (hword : word < 2 ^ width) :
    word.bits.count true =
      ((Finset.range width).filter fun i => word.testBit i).card := by
  rw [bits_count_eq_filter_fin]
  symm
  apply Finset.card_bij
      (fun i hi =>
        (⟨i, by
          have hiWidth : i < width :=
            Finset.mem_range.mp (Finset.mem_filter.mp hi).1
          by_contra hlen
          have hsize : word.size ≤ i := by
            rw [← Nat.size_eq_bits_len]
            omega
          have hfalse := Nat.testBit_eq_false_of_lt (Nat.size_le.mp hsize)
          have htrue := (Finset.mem_filter.mp hi).2
          simp [hfalse] at htrue⟩ : Fin word.bits.length))
  · intro i hi
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ _, ?_⟩
    exact (Finset.mem_filter.mp hi).2
  · intro a ha b hb hab
    exact Fin.ext_iff.mp hab
  · intro j hj
    refine ⟨j, ?_, ?_⟩
    · apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_range.mpr ?_, (Finset.mem_filter.mp hj).2⟩
      have hlen : word.bits.length ≤ width := by
        rw [Nat.size_eq_bits_len]
        exact Nat.size_le.mpr hword
      exact j.isLt.trans_le hlen
    · rfl

private lemma list_getD_lt_of_all_decide
    (words : List ℕ) (bound : ℕ)
    (hall : words.all (fun word => decide (word < bound)) = true)
    (hbound : 0 < bound) (index : ℕ) :
    words.getD index 0 < bound := by
  by_cases hindex : index < words.length
  · rw [List.getD_eq_getElem words 0 hindex]
    exact of_decide_eq_true
      ((List.all_eq_true.mp hall) words[index]
        (List.getElem_mem hindex))
  · rw [List.getD_eq_default words 0 (Nat.le_of_not_gt hindex)]
    exact hbound

private lemma cosetWords_getD_lt_twoPow64
    (squareCoset : Bool) (wordIndex : ℕ) :
    (if squareCoset then
        GeneratedTailSupportCoverage.squareCosetWords
      else GeneratedTailSupportCoverage.nonsquareCosetWords).getD
        wordIndex 0 < 2 ^ 64 := by
  cases squareCoset with
  | false =>
      apply list_getD_lt_of_all_decide
      · decide
      · positivity
  | true =>
      apply list_getD_lt_of_all_decide
      · decide
      · positivity

private lemma oddRootSupportWord_le_cosetWord
    (support : List ℕ) (squareCoset : Bool) (wordIndex : ℕ) :
    oddRootSupportWord support squareCoset wordIndex ≤
      (if squareCoset then
          GeneratedTailSupportCoverage.squareCosetWords
        else GeneratedTailSupportCoverage.nonsquareCosetWords).getD
          wordIndex 0 := by
  induction support with
  | nil => rfl
  | cons q support ih =>
      exact Nat.and_le_right.trans ih

private lemma oddRootSupportWord_lt_twoPow64
    (support : List ℕ) (squareCoset : Bool) (wordIndex : ℕ) :
    oddRootSupportWord support squareCoset wordIndex < 2 ^ 64 :=
  (oddRootSupportWord_le_cosetWord support squareCoset wordIndex).trans_lt
    (cosetWords_getD_lt_twoPow64 squareCoset wordIndex)

private lemma cosetWords_last_lt_twoPow33 (squareCoset : Bool) :
    (if squareCoset then
        GeneratedTailSupportCoverage.squareCosetWords
      else GeneratedTailSupportCoverage.nonsquareCosetWords).getD
        37 0 < 2 ^ 33 := by
  cases squareCoset <;> decide

private lemma oddRootSupportWord_last_lt_twoPow33
    (support : List ℕ) (squareCoset : Bool) :
    oddRootSupportWord support squareCoset 37 < 2 ^ 33 :=
  (oddRootSupportWord_le_cosetWord support squareCoset 37).trans_lt
    (cosetWords_last_lt_twoPow33 squareCoset)

private lemma wordMaskTestBit_block
    (words : List ℕ) (wordIndex bitIndex : ℕ) (hbit : bitIndex < 64) :
    wordMaskTestBit words (64 * wordIndex + bitIndex) =
      (words.getD wordIndex 0).testBit bitIndex := by
  have hdiv : (64 * wordIndex + bitIndex) / 64 = wordIndex := by omega
  have hmod : (64 * wordIndex + bitIndex) % 64 = bitIndex := by omega
  simp [wordMaskTestBit, hdiv, hmod]

private lemma cosetWords_testBit_block
    (squareCoset : Bool) (wordIndex bitIndex : ℕ)
    (hbit : bitIndex < 64)
    (hindex : 64 * wordIndex + bitIndex < 2401) :
    ((if squareCoset then
        GeneratedTailSupportCoverage.squareCosetWords
      else GeneratedTailSupportCoverage.nonsquareCosetWords).getD
        wordIndex 0).testBit bitIndex =
      modFiveCosetAccepts squareCoset
        (64 * wordIndex + bitIndex + 1) := by
  rw [← wordMaskTestBit_block _ _ _ hbit]
  cases squareCoset with
  | false =>
      exact CosetWordMaskCertificate.testBit_eq
        GeneratedTailSupportCoverage.nonsquareCosetCertificate hindex
  | true =>
      exact CosetWordMaskCertificate.testBit_eq
        GeneratedTailSupportCoverage.squareCosetCertificate hindex

private lemma oddRootSupportWord_testBit_block
    (support : List ℕ) (squareCoset : Bool)
    (wordIndex bitIndex : ℕ) (hbit : bitIndex < 64)
    (hindex : 64 * wordIndex + bitIndex < 2401) :
    (oddRootSupportWord support squareCoset wordIndex).testBit bitIndex =
      oddRootWordPointAccepts support squareCoset
        (64 * wordIndex + bitIndex + 1) := by
  induction support with
  | nil =>
      simpa [oddRootSupportWord, oddRootWordPointAccepts] using
        cosetWords_testBit_block squareCoset wordIndex bitIndex hbit hindex
  | cons q support ih =>
      rw [oddRootSupportWord, Nat.testBit_land,
        ← wordMaskTestBit_block _ _ _ hbit, ih]
      have hsub : 64 * wordIndex + bitIndex + 1 - 1 =
          64 * wordIndex + bitIndex := by omega
      simp only [oddRootWordPointAccepts, List.all_cons, hsub]
      cases modFiveCosetAccepts squareCoset
          (64 * wordIndex + bitIndex + 1) <;>
        cases wordMaskTestBit
          (GeneratedTailSupportCoverage.qrMaskWords q)
          (64 * wordIndex + bitIndex) <;>
        cases oddRootWordPointAccepts support squareCoset
          (64 * wordIndex + bitIndex + 1) <;> rfl

private theorem card_filter_Ico_shift
    (predicate : ℕ → Bool) (start count : ℕ) :
    ((Finset.Ico start (start + count)).filter fun m => predicate m).card =
      ((Finset.range count).filter fun offset =>
        predicate (start + offset)).card := by
  symm
  apply Finset.card_bij (fun offset _ => start + offset)
  · intro offset hoffset
    have hparts := Finset.mem_filter.mp hoffset
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_Ico.mpr ⟨by omega, ?_⟩, hparts.2⟩
    have := Finset.mem_range.mp hparts.1
    omega
  · intro a ha b hb hab
    omega
  · intro m hm
    have hparts := Finset.mem_filter.mp hm
    have hmIco := Finset.mem_Ico.mp hparts.1
    refine ⟨m - start, ?_, ?_⟩
    · apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_range.mpr (by omega), ?_⟩
      simpa [Nat.add_sub_of_le hmIco.1] using hparts.2
    · omega

private theorem countOddRootSupportWords_eq_sum_Ico
    (support : List ℕ) (squareCoset : Bool) (start : ℕ) :
    ∀ count,
      countOddRootSupportWords support squareCoset start count =
        ∑ wordIndex ∈ Finset.Ico start (start + count),
          (oddRootSupportWord support squareCoset wordIndex).bits.count true := by
  intro count
  induction count generalizing start with
  | zero => simp [countOddRootSupportWords]
  | succ count ih =>
      rw [countOddRootSupportWords]
      rw [Finset.sum_eq_sum_Ico_succ_bot (by omega)]
      rw [ih (start := start + 1)]
      simp [Nat.add_comm, Nat.add_left_comm]

private theorem countNatRange_add
    (predicate : ℕ → Bool) (start first second : ℕ) :
    countNatRange predicate start (first + second) =
      countNatRange predicate start first +
        countNatRange predicate (start + first) second := by
  induction first generalizing start with
  | zero => simp [countNatRange]
  | succ first ih =>
      rw [Nat.succ_add, countNatRange, ih (start := start + 1),
        countNatRange]
      simp [Nat.add_comm, Nat.add_left_comm]

private theorem sum_countNatRange_blocks
    (predicate : ℕ → Bool) (start width : ℕ) :
    ∀ blocks,
      (∑ block ∈ Finset.range blocks,
          countNatRange predicate (start + width * block) width) =
        countNatRange predicate start (width * blocks) := by
  intro blocks
  induction blocks with
  | zero => simp [countNatRange]
  | succ blocks ih =>
      calc
        (∑ block ∈ Finset.range (blocks + 1),
            countNatRange predicate (start + width * block) width) =
            (∑ block ∈ Finset.range blocks,
              countNatRange predicate (start + width * block) width) +
              countNatRange predicate (start + width * blocks) width := by
                rw [Finset.sum_range_succ]
        _ = countNatRange predicate start (width * blocks) +
              countNatRange predicate (start + width * blocks) width := by
                rw [ih]
        _ = countNatRange predicate start (width * blocks + width) :=
              (countNatRange_add predicate start (width * blocks) width).symm
        _ = countNatRange predicate start (width * (blocks + 1)) := by
              ring_nf

private lemma oddRootSupportWord_bits_count_eq_block
    (support : List ℕ) (squareCoset : Bool) (wordIndex width : ℕ)
    (hwidth : width ≤ 64)
    (hindex : 64 * wordIndex + width ≤ 2401)
    (hword : oddRootSupportWord support squareCoset wordIndex < 2 ^ width) :
    (oddRootSupportWord support squareCoset wordIndex).bits.count true =
      countNatRange (oddRootWordPointAccepts support squareCoset)
        (64 * wordIndex + 1) width := by
  rw [bits_count_eq_filter_range_of_lt_two_pow hword]
  rw [countNatRange_eq_card_filter_Ico]
  rw [card_filter_Ico_shift]
  apply congrArg Finset.card
  ext bitIndex
  simp only [Finset.mem_filter, Finset.mem_range]
  constructor
  · rintro ⟨hbit, htest⟩
    refine ⟨hbit, ?_⟩
    have hbit64 : bitIndex < 64 := hbit.trans_le hwidth
    have hvalid : 64 * wordIndex + bitIndex < 2401 := by omega
    have hblock := oddRootSupportWord_testBit_block support squareCoset
      wordIndex bitIndex hbit64 hvalid
    have hstart : 64 * wordIndex + 1 + bitIndex =
        64 * wordIndex + bitIndex + 1 := by omega
    rw [hstart, ← hblock]
    exact htest
  · rintro ⟨hbit, haccepts⟩
    refine ⟨hbit, ?_⟩
    have hbit64 : bitIndex < 64 := hbit.trans_le hwidth
    have hvalid : 64 * wordIndex + bitIndex < 2401 := by omega
    have hblock := oddRootSupportWord_testBit_block support squareCoset
      wordIndex bitIndex hbit64 hvalid
    have hstart : 64 * wordIndex + 1 + bitIndex =
        64 * wordIndex + bitIndex + 1 := by omega
    rw [hstart] at haccepts
    rw [hblock]
    exact haccepts

/-- The optimized word popcount is exactly the literal normal survivor count. -/
theorem oddRootWordSurvivorCount_eq_countNatRange
    (support : List ℕ) (squareCoset : Bool) :
    oddRootWordSurvivorCount support squareCoset =
      countNatRange (oddRootWordPointAccepts support squareCoset) 1 2401 := by
  rw [oddRootWordSurvivorCount]
  have hwords := countOddRootSupportWords_eq_sum_Ico
    support squareCoset 0 38
  simp only [zero_add, Nat.Ico_zero_eq_range] at hwords
  rw [hwords]
  rw [show 38 = 37 + 1 by norm_num, Finset.sum_range_succ]
  have hfull :
      (∑ wordIndex ∈ Finset.range 37,
          (oddRootSupportWord support squareCoset wordIndex).bits.count true) =
        countNatRange (oddRootWordPointAccepts support squareCoset) 1
          (64 * 37) := by
    calc
      (∑ wordIndex ∈ Finset.range 37,
          (oddRootSupportWord support squareCoset wordIndex).bits.count true) =
          ∑ wordIndex ∈ Finset.range 37,
            countNatRange (oddRootWordPointAccepts support squareCoset)
              (1 + 64 * wordIndex) 64 := by
                apply Finset.sum_congr rfl
                intro wordIndex hwordIndex
                have hlt : wordIndex < 37 := Finset.mem_range.mp hwordIndex
                simpa [Nat.add_comm] using
                  oddRootSupportWord_bits_count_eq_block support squareCoset
                    wordIndex 64 (by omega) (by omega)
                    (oddRootSupportWord_lt_twoPow64
                      support squareCoset wordIndex)
      _ = countNatRange (oddRootWordPointAccepts support squareCoset) 1
          (64 * 37) := sum_countNatRange_blocks
            (oddRootWordPointAccepts support squareCoset) 1 64 37
  rw [hfull]
  rw [oddRootSupportWord_bits_count_eq_block support squareCoset 37 33
    (by omega) (by norm_num)
    (oddRootSupportWord_last_lt_twoPow33 support squareCoset)]
  rw [← countNatRange_add]

private lemma oddIndexWordMask_testBit
    (bitIndex : ℕ) (hbit : bitIndex < 64) :
    oddIndexWordMask.testBit bitIndex =
      decide ((bitIndex + 1) % 2 = 1) := by
  interval_cases bitIndex <;> decide

private lemma testBit_mod_two_pow
    (word bitIndex width : ℕ) (hbit : bitIndex < width) :
    (word % 2 ^ width).testBit bitIndex = word.testBit bitIndex := by
  rw [← Nat.ofBits_testBit word width]
  simp [Nat.testBit_ofBits_lt, hbit]

private lemma oddMaskedRootSupportWord_bits_count_eq_block
    (support : List ℕ) (squareCoset : Bool) (wordIndex width : ℕ)
    (hwidthPos : 0 < width) (hwidth : width ≤ 64)
    (hindex : 64 * wordIndex + width ≤ 2401) :
    ((((oddRootSupportWord support squareCoset wordIndex) &&&
        oddIndexWordMask) % 2 ^ width).bits.count true) =
      countNatRange (oddRootWordOddPointAccepts support squareCoset)
        (64 * wordIndex + 1) width := by
  have htruncated :
      (((oddRootSupportWord support squareCoset wordIndex) &&&
          oddIndexWordMask) % 2 ^ width) < 2 ^ width :=
    Nat.mod_lt _ (pow_pos (by norm_num) _)
  rw [bits_count_eq_filter_range_of_lt_two_pow htruncated]
  rw [countNatRange_eq_card_filter_Ico]
  rw [card_filter_Ico_shift]
  apply congrArg Finset.card
  ext bitIndex
  simp only [Finset.mem_filter, Finset.mem_range]
  constructor
  · rintro ⟨hbit, htest⟩
    refine ⟨hbit, ?_⟩
    have hbit64 : bitIndex < 64 := hbit.trans_le hwidth
    have hvalid : 64 * wordIndex + bitIndex < 2401 := by omega
    have hroot := oddRootSupportWord_testBit_block support squareCoset
      wordIndex bitIndex hbit64 hvalid
    have hmask := oddIndexWordMask_testBit bitIndex hbit64
    have hparity :
        (64 * wordIndex + 1 + bitIndex) % 2 =
          (bitIndex + 1) % 2 := by omega
    rw [testBit_mod_two_pow _ _ _ hbit, Nat.testBit_land,
      hmask, hroot] at htest
    have hparts :
        oddRootWordPointAccepts support squareCoset
            (64 * wordIndex + bitIndex + 1) = true ∧
          decide ((bitIndex + 1) % 2 = 1) = true := by
      simpa only [Bool.and_eq_true] using htest
    rw [oddRootWordOddPointAccepts, Bool.and_eq_true]
    constructor
    · simpa [hparity] using hparts.2
    · simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using hparts.1
  · rintro ⟨hbit, haccepts⟩
    refine ⟨hbit, ?_⟩
    have hbit64 : bitIndex < 64 := hbit.trans_le hwidth
    have hvalid : 64 * wordIndex + bitIndex < 2401 := by omega
    have hroot := oddRootSupportWord_testBit_block support squareCoset
      wordIndex bitIndex hbit64 hvalid
    have hmask := oddIndexWordMask_testBit bitIndex hbit64
    have hparity :
        (64 * wordIndex + 1 + bitIndex) % 2 =
          (bitIndex + 1) % 2 := by omega
    have hparts :
        decide ((64 * wordIndex + 1 + bitIndex) % 2 = 1) = true ∧
          oddRootWordPointAccepts support squareCoset
            (64 * wordIndex + 1 + bitIndex) = true := by
      simpa only [oddRootWordOddPointAccepts, Bool.and_eq_true] using haccepts
    rw [testBit_mod_two_pow _ _ _ hbit, Nat.testBit_land,
      hmask, hroot]
    simpa only [Bool.and_eq_true] using And.intro
      (by simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using hparts.2)
      (by simpa [hparity] using hparts.1)

private theorem countOddRootSupportOddWords_eq_sum_Ico
    (support : List ℕ) (squareCoset : Bool) (start : ℕ) :
    ∀ count,
      countOddRootSupportOddWords support squareCoset start count =
        ∑ wordIndex ∈ Finset.Ico start (start + count),
          (((oddRootSupportWord support squareCoset wordIndex) &&&
            oddIndexWordMask).bits.count true) := by
  intro count
  induction count generalizing start with
  | zero => simp [countOddRootSupportOddWords]
  | succ count ih =>
      rw [countOddRootSupportOddWords]
      rw [Finset.sum_eq_sum_Ico_succ_bot (by omega)]
      rw [ih (start := start + 1)]
      simp [Nat.add_comm, Nat.add_left_comm]

/-- The optimized prefix popcount is exactly the literal number of odd
accepted complementary quotients through `676`. -/
theorem oddRootWordSurvivorCountThrough_676_eq_countNatRange
    (support : List ℕ) (squareCoset : Bool) :
    oddRootWordSurvivorCountThrough support squareCoset 676 =
      countNatRange (oddRootWordOddPointAccepts support squareCoset) 1 676 := by
  rw [oddRootWordSurvivorCountThrough]
  norm_num only
  have hwords := countOddRootSupportOddWords_eq_sum_Ico
    support squareCoset 0 10
  simp only [zero_add, Nat.Ico_zero_eq_range] at hwords
  rw [hwords]
  have hfull :
      (∑ wordIndex ∈ Finset.range 10,
          (((oddRootSupportWord support squareCoset wordIndex) &&&
            oddIndexWordMask).bits.count true)) =
        countNatRange (oddRootWordOddPointAccepts support squareCoset) 1
          (64 * 10) := by
    calc
      (∑ wordIndex ∈ Finset.range 10,
          (((oddRootSupportWord support squareCoset wordIndex) &&&
            oddIndexWordMask).bits.count true)) =
          ∑ wordIndex ∈ Finset.range 10,
            countNatRange (oddRootWordOddPointAccepts support squareCoset)
              (1 + 64 * wordIndex) 64 := by
                apply Finset.sum_congr rfl
                intro wordIndex hwordIndex
                have hlt : wordIndex < 10 := Finset.mem_range.mp hwordIndex
                have hmasked :
                    ((oddRootSupportWord support squareCoset wordIndex) &&&
                      oddIndexWordMask) < 2 ^ 64 :=
                  (Nat.and_le_left.trans_lt
                    (oddRootSupportWord_lt_twoPow64
                      support squareCoset wordIndex))
                have hblock := oddMaskedRootSupportWord_bits_count_eq_block
                  support squareCoset wordIndex 64 (by norm_num) (by norm_num)
                    (by omega)
                rw [Nat.mod_eq_of_lt hmasked] at hblock
                simpa [Nat.add_comm] using hblock
      _ = countNatRange (oddRootWordOddPointAccepts support squareCoset) 1
          (64 * 10) := sum_countNatRange_blocks
            (oddRootWordOddPointAccepts support squareCoset) 1 64 10
  rw [hfull]
  simp only [ite_false]
  have hlast := oddMaskedRootSupportWord_bits_count_eq_block
    support squareCoset 10 36 (by norm_num) (by norm_num) (by norm_num)
  norm_num at hlast
  rw [hlast]
  rw [← countNatRange_add]

theorem oddRootWordSurvivorCountThrough_676_eq_card
    (support : List ℕ) (squareCoset : Bool) :
    oddRootWordSurvivorCountThrough support squareCoset 676 =
      ((Finset.Ico 1 677).filter fun m =>
        oddRootWordOddPointAccepts support squareCoset m).card := by
  rw [oddRootWordSurvivorCountThrough_676_eq_countNatRange]
  simpa using countNatRange_eq_card_filter_Ico
    (oddRootWordOddPointAccepts support squareCoset) 1 676

#print axioms oddRootWordSurvivorCount_eq_countNatRange
#print axioms oddRootWordSurvivorCountThrough_676_eq_card

end Erdos848
