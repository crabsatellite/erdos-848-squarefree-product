import Erdos848.TailGlobalMixedWordCountByteCore
import Mathlib.Data.Nat.Size
import Mathlib.Data.Nat.Bitwise

namespace Erdos848

/-!
# Soundness of the fixed-cut mixed word counter

The generated leaves use a standard 64-bit SWAR population-count circuit.
This file connects the byte-local kernel proof to the natural-number checker
and finally to Lean's literal `Nat.bits.count true`.  No native-code oracle is
used anywhere in the chain.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def halfMaskedByte (x : BitVec 8) : BitVec 8 :=
  (x / BitVec.twoPow 8 1) &&& 85#8

theorem halfMaskedByte_le (x : BitVec 8) : halfMaskedByte x ≤ x := by
  revert x
  decide

theorem append_le_append
    {xh yh : BitVec v} {xl yl : BitVec w}
    (hhigh : xh ≤ yh) (hlow : xl ≤ yl) :
    xh ++ xl ≤ yh ++ yl := by
  rw [BitVec.le_def] at hhigh hlow ⊢
  rw [BitVec.toNat_append, ← Nat.shiftLeft_add_eq_or_of_lt xl.isLt]
  rw [BitVec.toNat_append, ← Nat.shiftLeft_add_eq_or_of_lt yl.isLt]
  simp only [Nat.shiftLeft_eq]
  exact Nat.add_le_add (Nat.mul_le_mul_right (2 ^ w) hhigh) hlow

theorem pack8_mono
    {a7 a6 a5 a4 a3 a2 a1 a0 : BitVec 8}
    {b7 b6 b5 b4 b3 b2 b1 b0 : BitVec 8}
    (h7 : a7 ≤ b7) (h6 : a6 ≤ b6) (h5 : a5 ≤ b5) (h4 : a4 ≤ b4)
    (h3 : a3 ≤ b3) (h2 : a2 ≤ b2) (h1 : a1 ≤ b1) (h0 : a0 ≤ b0) :
    pack8 a7 a6 a5 a4 a3 a2 a1 a0 ≤
      pack8 b7 b6 b5 b4 b3 b2 b1 b0 := by
  unfold pack8
  exact append_le_append
    (append_le_append
      (append_le_append
        (append_le_append
          (append_le_append
            (append_le_append
              (append_le_append h7 h6) h5) h4) h3) h2) h1) h0

theorem firstSub_pack8 (b7 b6 b5 b4 b3 b2 b1 b0 : BitVec 8) :
    ((pack8 b7 b6 b5 b4 b3 b2 b1 b0 / BitVec.twoPow 64 1) &&& mask85) =
      pack8 (halfMaskedByte b7) (halfMaskedByte b6)
        (halfMaskedByte b5) (halfMaskedByte b4)
        (halfMaskedByte b3) (halfMaskedByte b2)
        (halfMaskedByte b1) (halfMaskedByte b0) := by
  have h85 : ∀ i, i < 8 → 8 - 1 ≤ i → (85#8).getLsbD i = false := by
    intro i hi htop
    interval_cases i <;> decide
  unfold mask85 pack8 halfMaskedByte
  rw [append_udiv_twoPow_and_of_low_high_clear (v := 56) (by omega)
    (by omega) h85]
  rw [append_udiv_twoPow_and_of_low_high_clear (v := 48) (by omega)
    (by omega) h85]
  rw [append_udiv_twoPow_and_of_low_high_clear (v := 40) (by omega)
    (by omega) h85]
  rw [append_udiv_twoPow_and_of_low_high_clear (v := 32) (by omega)
    (by omega) h85]
  rw [append_udiv_twoPow_and_of_low_high_clear (v := 24) (by omega)
    (by omega) h85]
  rw [append_udiv_twoPow_and_of_low_high_clear (v := 16) (by omega)
    (by omega) h85]
  rw [append_udiv_twoPow_and_of_low_high_clear (v := 8) (by omega)
    (by omega) h85]

theorem mask85_value : mask85 = 6_148_914_691_236_517_205#64 := by decide
theorem mask51_value : mask51 = 3_689_348_814_741_910_323#64 := by decide
theorem mask15_value : mask15 = 1_085_102_592_571_150_095#64 := by decide
theorem twoPow64_one : BitVec.twoPow 64 1 = 2#64 := by decide
theorem twoPow64_two : BitVec.twoPow 64 2 = 4#64 := by decide
theorem twoPow64_four : BitVec.twoPow 64 4 = 16#64 := by decide

private def globalMixedSwarFirst (x : BitVec 64) : BitVec 64 :=
  x - ((x / 2#64) &&& 6_148_914_691_236_517_205#64)

private def globalMixedSwarSecond (x : BitVec 64) : BitVec 64 :=
  (globalMixedSwarFirst x &&& 3_689_348_814_741_910_323#64) +
    ((globalMixedSwarFirst x / 4#64) &&& 3_689_348_814_741_910_323#64)

private def globalMixedSwarThird (x : BitVec 64) : BitVec 64 :=
  (globalMixedSwarSecond x + globalMixedSwarSecond x / 16#64) &&&
    1_085_102_592_571_150_095#64

private theorem globalMixedSwarFirst_sub_le (x : BitVec 64) :
    ((x / 2#64) &&& 6_148_914_691_236_517_205#64) ≤ x := by
  rw [← twoPow64_one, ← mask85_value]
  rw [← pack8_extracts x, firstSub_pack8]
  exact pack8_mono
    (halfMaskedByte_le _) (halfMaskedByte_le _)
    (halfMaskedByte_le _) (halfMaskedByte_le _)
    (halfMaskedByte_le _) (halfMaskedByte_le _)
    (halfMaskedByte_le _) (halfMaskedByte_le _)

private theorem globalMixedSwarFirst_toNat (x : BitVec 64) :
    (globalMixedSwarFirst x).toNat =
      x.toNat - ((x.toNat / 2) &&& 6_148_914_691_236_517_205) := by
  simp [globalMixedSwarFirst,
    BitVec.toNat_sub_of_le (globalMixedSwarFirst_sub_le x)]

private theorem globalMixedSwarSecond_toNat (x : BitVec 64) :
    (globalMixedSwarSecond x).toNat =
      ((globalMixedSwarFirst x).toNat &&& 3_689_348_814_741_910_323) +
        (((globalMixedSwarFirst x).toNat / 4) &&& 3_689_348_814_741_910_323) := by
  have h₁ :
      (globalMixedSwarFirst x).toNat &&& 3_689_348_814_741_910_323 ≤
        3_689_348_814_741_910_323 := Nat.and_le_right
  have h₂ :
      (globalMixedSwarFirst x).toNat / 4 &&& 3_689_348_814_741_910_323 ≤
        3_689_348_814_741_910_323 := Nat.and_le_right
  have hsum :
      ((globalMixedSwarFirst x).toNat &&& 3_689_348_814_741_910_323) +
          ((globalMixedSwarFirst x).toNat / 4 &&& 3_689_348_814_741_910_323) <
        18_446_744_073_709_551_616 := by omega
  simp only [globalMixedSwarSecond, BitVec.toNat_add, BitVec.toNat_and,
    BitVec.toNat_udiv, BitVec.toNat_ofNat]
  norm_num [Nat.mod_eq_of_lt hsum]

private theorem globalMixedSwarThird_toNat (x : BitVec 64) :
    (globalMixedSwarThird x).toNat =
      ((globalMixedSwarSecond x).toNat +
          (globalMixedSwarSecond x).toNat / 16) &&&
        1_085_102_592_571_150_095 := by
  have hSecond :
      (globalMixedSwarSecond x).toNat ≤ 7_378_697_629_483_820_646 := by
    rw [globalMixedSwarSecond_toNat]
    have h₁ :
        (globalMixedSwarFirst x).toNat &&& 3_689_348_814_741_910_323 ≤
          3_689_348_814_741_910_323 := Nat.and_le_right
    have h₂ :
        (globalMixedSwarFirst x).toNat / 4 &&& 3_689_348_814_741_910_323 ≤
          3_689_348_814_741_910_323 := Nat.and_le_right
    omega
  have hsum :
      (globalMixedSwarSecond x).toNat +
          (globalMixedSwarSecond x).toNat / 16 <
        18_446_744_073_709_551_616 := by omega
  simp only [globalMixedSwarThird, BitVec.toNat_and, BitVec.toNat_add,
    BitVec.toNat_udiv, BitVec.toNat_ofNat]
  norm_num [Nat.mod_eq_of_lt hsum]

private theorem globalMixedSwarThird_eq_pipeline (x : BitVec 64) :
    globalMixedSwarThird x =
      thirdStep (secondStep (firstStep x mask85) mask51) mask15 := by
  unfold globalMixedSwarThird globalMixedSwarSecond globalMixedSwarFirst
  unfold thirdStep secondStep firstStep
  rw [mask85_value, mask51_value, mask15_value,
    twoPow64_one, twoPow64_two, twoPow64_four]

theorem swarPipeline_pack8 (b7 b6 b5 b4 b3 b2 b1 b0 : BitVec 8) :
    thirdStep
        (secondStep (firstStep (pack8 b7 b6 b5 b4 b3 b2 b1 b0) mask85) mask51)
        mask15 =
      pack8 (byteThird b7) (byteThird b6) (byteThird b5) (byteThird b4)
        (byteThird b3) (byteThird b2) (byteThird b1) (byteThird b0) := by
  rw [firstStep_pack8, secondStep_pack8]
  change thirdStep
      (pack8 (byteSecond b7) (byteSecond b6) (byteSecond b5) (byteSecond b4)
        (byteSecond b3) (byteSecond b2) (byteSecond b1) (byteSecond b0)) mask15 = _
  exact thirdStep_pack8_of_byteSecond b7 b6 b5 b4 b3 b2 b1 b0

private theorem globalMixedSwarThird_pack8 (x : BitVec 64) :
    globalMixedSwarThird x =
      pack8 (byteThird (x.extractLsb' 56 8)) (byteThird (x.extractLsb' 48 8))
        (byteThird (x.extractLsb' 40 8)) (byteThird (x.extractLsb' 32 8))
        (byteThird (x.extractLsb' 24 8)) (byteThird (x.extractLsb' 16 8))
        (byteThird (x.extractLsb' 8 8)) (byteThird (x.extractLsb' 0 8)) := by
  rw [globalMixedSwarThird_eq_pipeline]
  have hp := swarPipeline_pack8
    (x.extractLsb' 56 8) (x.extractLsb' 48 8)
    (x.extractLsb' 40 8) (x.extractLsb' 32 8)
    (x.extractLsb' 24 8) (x.extractLsb' 16 8)
    (x.extractLsb' 8 8) (x.extractLsb' 0 8)
  rw [pack8_extracts x] at hp
  exact hp

private theorem globalMixedCoreWordCount_eq_thirdNat (x : BitVec 64) :
    globalMixedCoreWordCount x.toNat =
      (((globalMixedSwarThird x).toNat * 72_340_172_838_076_673) %
          18_446_744_073_709_551_616) / 72_057_594_037_927_936 := by
  unfold globalMixedCoreWordCount
  rw [globalMixedSwarThird_toNat, globalMixedSwarSecond_toNat,
    globalMixedSwarFirst_toNat]

theorem pack8_cpop_toNat (b7 b6 b5 b4 b3 b2 b1 b0 : BitVec 8) :
    (pack8 b7 b6 b5 b4 b3 b2 b1 b0).cpop.toNat =
      b7.cpop.toNat + b6.cpop.toNat + b5.cpop.toNat + b4.cpop.toNat +
        b3.cpop.toNat + b2.cpop.toNat + b1.cpop.toNat + b0.cpop.toNat := by
  unfold pack8
  rw [BitVec.toNat_cpop_append, BitVec.toNat_cpop_append,
    BitVec.toNat_cpop_append, BitVec.toNat_cpop_append,
    BitVec.toNat_cpop_append, BitVec.toNat_cpop_append,
    BitVec.toNat_cpop_append]

private theorem globalMixedCoreWordCount_eq_cpop (x : BitVec 64) :
    globalMixedCoreWordCount x.toNat = x.cpop.toNat := by
  let b7 := x.extractLsb' 56 8
  let b6 := x.extractLsb' 48 8
  let b5 := x.extractLsb' 40 8
  let b4 := x.extractLsb' 32 8
  let b3 := x.extractLsb' 24 8
  let b2 := x.extractLsb' 16 8
  let b1 := x.extractLsb' 8 8
  let b0 := x.extractLsb' 0 8
  have h7 : (byteThird b7).toNat ≤ 8 := by
    rw [byteThird_eq_cpop]
    exact BitVec.toNat_cpop_le b7
  have h6 : (byteThird b6).toNat ≤ 8 := by
    rw [byteThird_eq_cpop]
    exact BitVec.toNat_cpop_le b6
  have h5 : (byteThird b5).toNat ≤ 8 := by
    rw [byteThird_eq_cpop]
    exact BitVec.toNat_cpop_le b5
  have h4 : (byteThird b4).toNat ≤ 8 := by
    rw [byteThird_eq_cpop]
    exact BitVec.toNat_cpop_le b4
  have h3 : (byteThird b3).toNat ≤ 8 := by
    rw [byteThird_eq_cpop]
    exact BitVec.toNat_cpop_le b3
  have h2 : (byteThird b2).toNat ≤ 8 := by
    rw [byteThird_eq_cpop]
    exact BitVec.toNat_cpop_le b2
  have h1 : (byteThird b1).toNat ≤ 8 := by
    rw [byteThird_eq_cpop]
    exact BitVec.toNat_cpop_le b1
  have h0 : (byteThird b0).toNat ≤ 8 := by
    rw [byteThird_eq_cpop]
    exact BitVec.toNat_cpop_le b0
  calc
    globalMixedCoreWordCount x.toNat =
        (((globalMixedSwarThird x).toNat * 72_340_172_838_076_673) %
            18_446_744_073_709_551_616) / 72_057_594_037_927_936 :=
      globalMixedCoreWordCount_eq_thirdNat x
    _ = (byteThird b7).toNat + (byteThird b6).toNat +
          (byteThird b5).toNat + (byteThird b4).toNat +
          (byteThird b3).toNat + (byteThird b2).toNat +
          (byteThird b1).toNat + (byteThird b0).toNat := by
      rw [globalMixedSwarThird_pack8, pack8_toNat]
      exact byteConvolution_mul_high_pow _ _ _ _ _ _ _ _
        h7 h6 h5 h4 h3 h2 h1 h0
    _ = b7.cpop.toNat + b6.cpop.toNat + b5.cpop.toNat + b4.cpop.toNat +
          b3.cpop.toNat + b2.cpop.toNat + b1.cpop.toNat + b0.cpop.toNat := by
      simp only [byteThird_eq_cpop]
    _ = x.cpop.toNat := by
      rw [← pack8_cpop_toNat]
      change (pack8 (x.extractLsb' 56 8) (x.extractLsb' 48 8)
        (x.extractLsb' 40 8) (x.extractLsb' 32 8)
        (x.extractLsb' 24 8) (x.extractLsb' 16 8)
        (x.extractLsb' 8 8) (x.extractLsb' 0 8)).cpop.toNat = _
      rw [pack8_extracts]

private theorem globalMixedCpopNatRec_eq_sum (x : BitVec w) : ∀ n acc,
    x.cpopNatRec n acc =
      acc + ∑ i ∈ Finset.range n, (x.getLsbD i).toNat := by
  intro n
  induction n with
  | zero => simp
  | succ n ih =>
      intro acc
      rw [BitVec.cpopNatRec_succ, ih, Finset.sum_range_succ]
      omega

private theorem globalMixedBitsCount_eq_filter_fin (word : ℕ) :
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

theorem globalMixedBitsCount_eq_filter_range_of_lt_two_pow
    {word width : ℕ} (hword : word < 2 ^ width) :
    word.bits.count true =
      ((Finset.range width).filter fun i => word.testBit i).card := by
  rw [globalMixedBitsCount_eq_filter_fin]
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

private theorem globalMixedCpop_eq_bits_count
    {word : ℕ} (hword : word < 2 ^ 64) :
    (BitVec.ofNat 64 word).cpop.toNat = word.bits.count true := by
  rw [BitVec.toNat_cpop, globalMixedCpopNatRec_eq_sum,
    globalMixedBitsCount_eq_filter_range_of_lt_two_pow hword]
  simp only [BitVec.getLsbD_ofNat]
  have hsum : ∀ s : Finset ℕ,
      (∑ i ∈ s, (word.testBit i).toNat) =
        (s.filter fun i => word.testBit i).card := by
    intro s
    induction s using Finset.induction_on with
    | empty => simp
    | @insert a s ha ih =>
        cases hbit : word.testBit a <;>
          simp [Finset.filter_insert, ha, ih, hbit] <;> omega
  simpa using hsum (Finset.range 64)

/-- The optimized generated-leaf counter is exactly the literal number of set
bits for every generated 64-bit word. -/
theorem globalMixedCoreWordCount_eq_bits_count
    {word : ℕ} (hword : word < 2 ^ 64) :
    globalMixedCoreWordCount word = word.bits.count true := by
  calc
    globalMixedCoreWordCount word =
        (BitVec.ofNat 64 word).cpop.toNat := by
      have hswar := globalMixedCoreWordCount_eq_cpop
        (BitVec.ofNat 64 word)
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hword] at hswar
      exact hswar
    _ = word.bits.count true := globalMixedCpop_eq_bits_count hword

/-- Public bridge used by the generated `BitVec 64` certificates.  The
optimized natural-number counter and Lean's kernel population count agree on
every literal word in the fixed 64-bit domain. -/
theorem globalMixedCoreWordCount_eq_cpop_toNat
    {word : ℕ} (hword : word < 2 ^ 64) :
    globalMixedCoreWordCount word = (BitVec.ofNat 64 word).cpop.toNat := by
  have hcount := globalMixedCoreWordCount_eq_cpop (BitVec.ofNat 64 word)
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hword] at hcount
  exact hcount

#print axioms globalMixedCoreWordCount_eq_bits_count
#print axioms globalMixedCoreWordCount_eq_cpop_toNat

end Erdos848
