import Erdos848.TailGlobalMixedSupportCheckerCore
import Mathlib.Tactic
import Mathlib.Data.Nat.Size
import Mathlib.Data.Nat.Bitwise

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def swarBitVec (x : BitVec 64) : BitVec 64 :=
  let first := x - ((x / 2#64) &&& 6_148_914_691_236_517_205#64)
  let second := (first &&& 3_689_348_814_741_910_323#64) +
    ((first / 4#64) &&& 3_689_348_814_741_910_323#64)
  let third := (second + second / 16#64) &&& 1_085_102_592_571_150_095#64
  (third * 72_340_172_838_076_673#64) / 72_057_594_037_927_936#64

theorem swarProbe (x : BitVec 64) :
    swarBitVec x = x.cpop := by
  unfold swarBitVec
  bv_decide

#print axioms swarProbe

set_option maxRecDepth 10000000 in
theorem swarCertKernel :
    Std.Tactic.BVDecide.Reflect.verifyBVExpr
      swarProbe._expr_def_1_1 swarProbe._cert_def_1_1 = true := by
  rfl

#print axioms swarCertKernel

def swarFirst (x : BitVec 64) : BitVec 64 :=
  x - ((x / 2#64) &&& 6_148_914_691_236_517_205#64)

def swarSecond (x : BitVec 64) : BitVec 64 :=
  (swarFirst x &&& 3_689_348_814_741_910_323#64) +
    ((swarFirst x / 4#64) &&& 3_689_348_814_741_910_323#64)

def swarThird (x : BitVec 64) : BitVec 64 :=
  (swarSecond x + swarSecond x / 16#64) &&&
    1_085_102_592_571_150_095#64

theorem swarFirst_toNat (x : BitVec 64) :
    (swarFirst x).toNat =
      x.toNat - ((x.toNat / 2) &&& 6_148_914_691_236_517_205) := by
  have h : ((x / 2#64) &&& 6_148_914_691_236_517_205#64) ≤ x := by
    bv_decide
  simp [swarFirst, BitVec.toNat_sub_of_le h]

theorem swarSecond_toNat (x : BitVec 64) :
    (swarSecond x).toNat =
      ((swarFirst x).toNat &&& 3_689_348_814_741_910_323) +
        (((swarFirst x).toNat / 4) &&& 3_689_348_814_741_910_323) := by
  have h₁ : (swarFirst x).toNat &&& 3_689_348_814_741_910_323 ≤
      3_689_348_814_741_910_323 := Nat.and_le_right
  have h₂ : (swarFirst x).toNat / 4 &&& 3_689_348_814_741_910_323 ≤
      3_689_348_814_741_910_323 := Nat.and_le_right
  have hsum :
      ((swarFirst x).toNat &&& 3_689_348_814_741_910_323) +
          ((swarFirst x).toNat / 4 &&& 3_689_348_814_741_910_323) <
        18_446_744_073_709_551_616 := by omega
  simp only [swarSecond, BitVec.toNat_add, BitVec.toNat_and,
    BitVec.toNat_udiv, BitVec.toNat_ofNat]
  norm_num [Nat.mod_eq_of_lt hsum]

theorem swarThird_toNat (x : BitVec 64) :
    (swarThird x).toNat =
      ((swarSecond x).toNat + (swarSecond x).toNat / 16) &&&
        1_085_102_592_571_150_095 := by
  have hSecond : (swarSecond x).toNat ≤
      7_378_697_629_483_820_646 := by
    rw [swarSecond_toNat]
    have h₁ : (swarFirst x).toNat &&& 3_689_348_814_741_910_323 ≤
        3_689_348_814_741_910_323 := Nat.and_le_right
    have h₂ : (swarFirst x).toNat / 4 &&& 3_689_348_814_741_910_323 ≤
        3_689_348_814_741_910_323 := Nat.and_le_right
    omega
  have hsum :
      (swarSecond x).toNat + (swarSecond x).toNat / 16 <
        18_446_744_073_709_551_616 := by omega
  simp only [swarThird, BitVec.toNat_and, BitVec.toNat_add,
    BitVec.toNat_udiv, BitVec.toNat_ofNat]
  norm_num [Nat.mod_eq_of_lt hsum]

theorem natSwarProbe (x : BitVec 64) :
    globalMixedCoreWordCount x.toNat = (swarBitVec x).toNat := by
  rw [show swarBitVec x =
      (swarThird x * 72_340_172_838_076_673#64) /
        72_057_594_037_927_936#64 by rfl]
  unfold globalMixedCoreWordCount
  rw [BitVec.toNat_udiv, BitVec.toNat_mul]
  norm_num only [BitVec.toNat_ofNat]
  rw [swarThird_toNat, swarSecond_toNat, swarFirst_toNat]

theorem cpopNatRec_eq_sum (x : BitVec w) : ∀ n acc,
    x.cpopNatRec n acc =
      acc + ∑ i ∈ Finset.range n, (x.getLsbD i).toNat := by
  intro n
  induction n with
  | zero => simp
  | succ n ih =>
      intro acc
      rw [BitVec.cpopNatRec_succ, ih, Finset.sum_range_succ]
      omega

theorem bits_count_eq_filter_fin (word : ℕ) :
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

theorem bits_count_eq_filter_range_of_lt_two_pow
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

theorem cpop_eq_bits_count {word : ℕ} (hword : word < 2 ^ 64) :
    (BitVec.ofNat 64 word).cpop.toNat = word.bits.count true := by
  rw [BitVec.toNat_cpop, cpopNatRec_eq_sum,
    bits_count_eq_filter_range_of_lt_two_pow hword]
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

theorem wordCount_eq_bits_count {word : ℕ} (hword : word < 2 ^ 64) :
    globalMixedCoreWordCount word = word.bits.count true := by
  calc
    globalMixedCoreWordCount word =
        (swarBitVec (BitVec.ofNat 64 word)).toNat := by
      have hswar := natSwarProbe (BitVec.ofNat 64 word)
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hword] at hswar
      exact hswar
    _ = (BitVec.ofNat 64 word).cpop.toNat := by rw [swarProbe]
    _ = word.bits.count true := cpop_eq_bits_count hword

end Erdos848
