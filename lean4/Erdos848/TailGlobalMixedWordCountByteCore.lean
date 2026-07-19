import Erdos848.TailGlobalMixedSupportCheckerCore
import Mathlib.Tactic

namespace Erdos848

/-!
# Kernel-only byte decomposition for the fixed-cut mixed word counter

The optimized checker uses a 64-bit SWAR population count.  This module proves
the three byte-local stages and the final base-256 convolution without native
evaluation.  The downstream soundness module connects these lemmas to the
natural-number checker and Lean's literal bit count.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem append_add_of_low_no_carry
    {xh yh : BitVec v} {xl yl : BitVec w}
    (h : xl.toNat + yl.toNat < 2 ^ w) :
    (xh ++ xl) + (yh ++ yl) = (xh + yh) ++ (xl + yl) := by
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_add, BitVec.toNat_append]
  rw [← Nat.shiftLeft_add_eq_or_of_lt xl.isLt,
    ← Nat.shiftLeft_add_eq_or_of_lt yl.isLt]
  rw [Nat.mod_eq_of_lt h]
  rw [← Nat.shiftLeft_add_eq_or_of_lt h]
  simp only [Nat.shiftLeft_eq, Nat.pow_add]
  rw [show xh.toNat * 2 ^ w + xl.toNat +
      (yh.toNat * 2 ^ w + yl.toNat) =
      (xh.toNat + yh.toNat) * 2 ^ w +
        (xl.toNat + yl.toNat) by ring]
  rw [Nat.add_mod]
  rw [Nat.mul_mod_mul_right]
  rw [Nat.mod_eq_of_lt (h.trans_le (Nat.le_mul_of_pos_left _ (Nat.two_pow_pos v)))]
  rw [Nat.mod_eq_of_lt]
  have hhigh := Nat.mod_lt (xh.toNat + yh.toNat) (Nat.two_pow_pos v)
  nlinarith

theorem append_sub_of_low_no_borrow
    {xh yh : BitVec v} {xl yl : BitVec w}
    (h : yl.toNat ≤ xl.toNat) :
    (xh ++ xl) - (yh ++ yl) = (xh - yh) ++ (xl - yl) := by
  apply BitVec.sub_eq_iff_eq_add.mpr
  rw [append_add_of_low_no_carry]
  · rw [BitVec.sub_add_cancel, BitVec.sub_add_cancel]
  · have hsub : (xl - yl).toNat = xl.toNat - yl.toNat := by
      rw [BitVec.toNat_sub_of_le]
      rwa [BitVec.le_def]
    rw [hsub]
    have := xl.isLt
    omega

theorem two_eq_twoPow {w : ℕ} (hw : 1 < w) :
    2#w = BitVec.twoPow w 1 := by
  apply BitVec.eq_of_toNat_eq
  simp [BitVec.toNat_twoPow_eq_ite, hw]

theorem append_udiv_two_and_of_low_msb_false
    {xh : BitVec v} {xl : BitVec 8}
    {mh : BitVec v} {ml : BitVec 8}
    (hv : 1 < v) (hml : ml.getLsbD 7 = false) :
    ((xh ++ xl) / 2#(v + 8)) &&& (mh ++ ml) =
      ((xh / 2#v) &&& mh) ++ ((xl / 2#8) &&& ml) := by
  rw [two_eq_twoPow (by omega : 1 < v + 8),
    BitVec.udiv_twoPow_eq_of_lt (by omega)]
  rw [two_eq_twoPow hv, BitVec.udiv_twoPow_eq_of_lt hv]
  rw [two_eq_twoPow (by omega : 1 < 8),
    BitVec.udiv_twoPow_eq_of_lt (by omega)]
  have hml' : ml[7] = false := by
    rw [← BitVec.getLsbD_eq_getElem]
    exact hml
  ext i hi
  simp only [BitVec.getElem_and, BitVec.getElem_append,
    BitVec.getElem_ushiftRight]
  by_cases hi8 : i < 8
  · simp only [hi8, ↓reduceDIte]
    by_cases hi7 : i < 7
    · have hiSucc : i + 1 < 8 := by omega
      rw [BitVec.getLsbD_append]
      simp [show 1 + i < 8 by omega]
    · have hieq : i = 7 := by omega
      subst i
      simp [hml']
  · have hiv : i - 8 < v := by omega
    simp only [hi8, ↓reduceDIte, hiv]
    by_cases hitop : i + 1 < v + 8
    · have hhigh : i + 1 - 8 = (i - 8) + 1 := by omega
      rw [BitVec.getLsbD_append]
      simp [show ¬i + 1 < 8 by omega, hhigh, Nat.add_comm]
    · have htop : ¬i - 8 + 1 < v := by omega
      rw [BitVec.getLsbD_of_ge _ _ (by omega),
        BitVec.getLsbD_of_ge _ _ (by omega)]

theorem append_udiv_twoPow_and_of_low_high_clear
    {xh : BitVec v} {xl : BitVec 8}
    {mh : BitVec v} {ml : BitVec 8} {k : ℕ}
    (hkv : k < v) (hk8 : k < 8)
    (hml : ∀ i, i < 8 → 8 - k ≤ i → ml.getLsbD i = false) :
    ((xh ++ xl) / BitVec.twoPow (v + 8) k) &&& (mh ++ ml) =
      ((xh / BitVec.twoPow v k) &&& mh) ++
        ((xl / BitVec.twoPow 8 k) &&& ml) := by
  rw [BitVec.udiv_twoPow_eq_of_lt (by omega),
    BitVec.udiv_twoPow_eq_of_lt hkv,
    BitVec.udiv_twoPow_eq_of_lt hk8]
  ext i hi
  simp only [BitVec.getElem_and, BitVec.getElem_append,
    BitVec.getElem_ushiftRight]
  by_cases hi8 : i < 8
  · simp only [hi8, ↓reduceDIte]
    by_cases hicross : i + k < 8
    · rw [BitVec.getLsbD_append]
      simp [show k + i < 8 by omega]
    · have hmaskD := hml i hi8 (by omega)
      have hmask : ml[i] = false := by
        rw [← BitVec.getLsbD_eq_getElem]
        exact hmaskD
      simp [hmask]
  · have hiv : i - 8 < v := by omega
    simp only [hi8, ↓reduceDIte]
    by_cases hitop : i + k < v + 8
    · have hhigh : i + k - 8 = (i - 8) + k := by omega
      rw [BitVec.getLsbD_append]
      simp [show ¬k + i < 8 by omega,
        show k + i - 8 = k + (i - 8) by omega]
    · rw [BitVec.getLsbD_of_ge _ _ (by omega),
        BitVec.getLsbD_of_ge _ _ (by omega)]

def byteFirst (x : BitVec 8) : BitVec 8 :=
  x - ((x / BitVec.twoPow 8 1) &&& 85#8)

def byteSecond (x : BitVec 8) : BitVec 8 :=
  (byteFirst x &&& 51#8) +
    ((byteFirst x / BitVec.twoPow 8 2) &&& 51#8)

def byteThird (x : BitVec 8) : BitVec 8 :=
  (byteSecond x + byteSecond x / BitVec.twoPow 8 4) &&& 15#8

theorem byteThird_eq_cpop (x : BitVec 8) :
    byteThird x = x.cpop := by
  revert x
  decide

def firstStep {w : ℕ} (x mask : BitVec w) : BitVec w :=
  x - ((x / BitVec.twoPow w 1) &&& mask)

def secondStep {w : ℕ} (x mask : BitVec w) : BitVec w :=
  (x &&& mask) + ((x / BitVec.twoPow w 2) &&& mask)

def thirdStep {w : ℕ} (x mask : BitVec w) : BitVec w :=
  (x + x / BitVec.twoPow w 4) &&& mask

theorem firstStep_append
    {xh : BitVec v} {xl : BitVec 8} {mh : BitVec v} {ml : BitVec 8}
    (hv : 1 < v)
    (hml : ∀ i, i < 8 → 8 - 1 ≤ i → ml.getLsbD i = false) :
    firstStep (xh ++ xl) (mh ++ ml) =
      firstStep xh mh ++ firstStep xl ml := by
  unfold firstStep
  rw [append_udiv_twoPow_and_of_low_high_clear
    (k := 1) (by omega) (by omega) hml]
  apply append_sub_of_low_no_borrow
  simp only [BitVec.toNat_and, BitVec.toNat_udiv,
    BitVec.toNat_twoPow_eq_ite, show 1 < 8 by omega, ↓reduceIte]
  exact Nat.and_le_left.trans (Nat.div_le_self _ _)

theorem secondStep_append
    {xh : BitVec v} {xl : BitVec 8} {mh : BitVec v} {ml : BitVec 8}
    (hv : 2 < v)
    (hml : ∀ i, i < 8 → 8 - 2 ≤ i → ml.getLsbD i = false)
    (hmlBound : 2 * ml.toNat < 2 ^ 8) :
    secondStep (xh ++ xl) (mh ++ ml) =
      secondStep xh mh ++ secondStep xl ml := by
  unfold secondStep
  rw [BitVec.and_append]
  rw [append_udiv_twoPow_and_of_low_high_clear
    (k := 2) (by omega) (by omega) hml]
  apply append_add_of_low_no_carry
  have h₁ : (xl &&& ml).toNat ≤ ml.toNat := by
    simpa only [BitVec.toNat_and] using
      (Nat.and_le_right : xl.toNat &&& ml.toNat ≤ ml.toNat)
  have h₂ : ((xl / BitVec.twoPow 8 2) &&& ml).toNat ≤ ml.toNat := by
    simpa only [BitVec.toNat_and] using
      (Nat.and_le_right :
        (xl / BitVec.twoPow 8 2).toNat &&& ml.toNat ≤ ml.toNat)
  omega

def shiftFourLow (xh : BitVec v) (xl : BitVec 8) : BitVec 8 :=
  BitVec.ofNat 8 ((xh.toNat % 16) * 16 + xl.toNat / 16)

theorem append_udiv_four (xh : BitVec v) (xl : BitVec 8) (hv : 4 < v) :
    (xh ++ xl) / BitVec.twoPow (v + 8) 4 =
      (xh / BitVec.twoPow v 4) ++ shiftFourLow xh xl := by
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_udiv, BitVec.toNat_append,
    BitVec.toNat_twoPow_eq_ite, show 4 < v + 8 by omega,
    show 4 < v by omega, ↓reduceIte, shiftFourLow, BitVec.toNat_ofNat]
  rw [← Nat.shiftLeft_add_eq_or_of_lt xl.isLt]
  have hcross : (xh.toNat % 16) * 16 + xl.toNat / 16 < 2 ^ 8 := by
    have hxmod := Nat.mod_lt xh.toNat (by norm_num : 0 < 16)
    have hxldiv : xl.toNat / 16 < 16 := by omega
    norm_num
    omega
  rw [Nat.mod_eq_of_lt hcross]
  rw [← Nat.shiftLeft_add_eq_or_of_lt hcross]
  simp only [Nat.shiftLeft_eq]
  have hxsplit := Nat.div_add_mod xh.toNat 16
  norm_num at hxsplit ⊢
  omega

theorem thirdStep_append
    {xh : BitVec v} {xl : BitVec 8} {mh : BitVec v}
    (hv : 4 < v)
    (hcarry : xl.toNat + (xh.toNat % 16) * 16 + xl.toNat / 16 < 2 ^ 8) :
    thirdStep (xh ++ xl) (mh ++ 15#8) =
      thirdStep xh mh ++ thirdStep xl 15#8 := by
  unfold thirdStep
  rw [append_udiv_four xh xl hv]
  rw [append_add_of_low_no_carry]
  · rw [BitVec.and_append]
    congr 1
    apply BitVec.eq_of_toNat_eq
    simp only [shiftFourLow, BitVec.toNat_and, BitVec.toNat_add,
      BitVec.toNat_ofNat, BitVec.toNat_udiv,
      BitVec.toNat_twoPow_eq_ite, show 4 < 8 by omega, ↓reduceIte]
    have hcross : (xh.toNat % 16) * 16 + xl.toNat / 16 < 2 ^ 8 := by
      omega
    have hcarry' :
        xl.toNat + ((xh.toNat % 16) * 16 + xl.toNat / 16) < 2 ^ 8 := by
      omega
    rw [Nat.mod_eq_of_lt hcross]
    rw [Nat.mod_eq_of_lt hcarry']
    have hlocal : xl.toNat + xl.toNat / 16 < 2 ^ 8 := by omega
    rw [Nat.mod_eq_of_lt hlocal]
    norm_num
    rw [show 15 = 2 ^ 4 - 1 by norm_num]
    simp only [Nat.and_two_pow_sub_one_eq_mod]
    omega
  · simpa only [shiftFourLow, BitVec.toNat_ofNat,
      Nat.mod_eq_of_lt (show (xh.toNat % 16) * 16 + xl.toNat / 16 < 2 ^ 8 by
        have hxmod := Nat.mod_lt xh.toNat (by norm_num : 0 < 16)
        have hxldiv : xl.toNat / 16 < 16 := by omega
        norm_num
        omega)] using (show
          xl.toNat + ((xh.toNat % 16) * 16 + xl.toNat / 16) < 2 ^ 8 by
            omega)

def pack8 (b7 b6 b5 b4 b3 b2 b1 b0 : BitVec 8) : BitVec 64 :=
  ((((((b7 ++ b6) ++ b5) ++ b4) ++ b3) ++ b2) ++ b1) ++ b0

def mask85 : BitVec 64 :=
  pack8 85#8 85#8 85#8 85#8 85#8 85#8 85#8 85#8

def mask51 : BitVec 64 :=
  pack8 51#8 51#8 51#8 51#8 51#8 51#8 51#8 51#8

def mask15 : BitVec 64 :=
  pack8 15#8 15#8 15#8 15#8 15#8 15#8 15#8 15#8

theorem firstStep_pack8 (b7 b6 b5 b4 b3 b2 b1 b0 : BitVec 8) :
    firstStep (pack8 b7 b6 b5 b4 b3 b2 b1 b0) mask85 =
      pack8 (byteFirst b7) (byteFirst b6) (byteFirst b5) (byteFirst b4)
        (byteFirst b3) (byteFirst b2) (byteFirst b1) (byteFirst b0) := by
  have h85 : ∀ i, i < 8 → 8 - 1 ≤ i → (85#8).getLsbD i = false := by
    intro i hi htop
    interval_cases i <;> decide
  unfold mask85 pack8
  rw [firstStep_append (v := 56) (by omega) h85]
  rw [firstStep_append (v := 48) (by omega) h85]
  rw [firstStep_append (v := 40) (by omega) h85]
  rw [firstStep_append (v := 32) (by omega) h85]
  rw [firstStep_append (v := 24) (by omega) h85]
  rw [firstStep_append (v := 16) (by omega) h85]
  rw [firstStep_append (v := 8) (by omega) h85]
  rfl

theorem secondStep_pack8 (b7 b6 b5 b4 b3 b2 b1 b0 : BitVec 8) :
    secondStep (pack8 b7 b6 b5 b4 b3 b2 b1 b0) mask51 =
      pack8
        ((b7 &&& 51#8) + ((b7 / BitVec.twoPow 8 2) &&& 51#8))
        ((b6 &&& 51#8) + ((b6 / BitVec.twoPow 8 2) &&& 51#8))
        ((b5 &&& 51#8) + ((b5 / BitVec.twoPow 8 2) &&& 51#8))
        ((b4 &&& 51#8) + ((b4 / BitVec.twoPow 8 2) &&& 51#8))
        ((b3 &&& 51#8) + ((b3 / BitVec.twoPow 8 2) &&& 51#8))
        ((b2 &&& 51#8) + ((b2 / BitVec.twoPow 8 2) &&& 51#8))
        ((b1 &&& 51#8) + ((b1 / BitVec.twoPow 8 2) &&& 51#8))
        ((b0 &&& 51#8) + ((b0 / BitVec.twoPow 8 2) &&& 51#8)) := by
  have h51 : ∀ i, i < 8 → 8 - 2 ≤ i → (51#8).getLsbD i = false := by
    intro i hi htop
    interval_cases i <;> decide
  have hbound : 2 * (51#8).toNat < 2 ^ 8 := by decide
  unfold mask51 pack8
  rw [secondStep_append (v := 56) (by omega) h51 hbound]
  rw [secondStep_append (v := 48) (by omega) h51 hbound]
  rw [secondStep_append (v := 40) (by omega) h51 hbound]
  rw [secondStep_append (v := 32) (by omega) h51 hbound]
  rw [secondStep_append (v := 24) (by omega) h51 hbound]
  rw [secondStep_append (v := 16) (by omega) h51 hbound]
  rw [secondStep_append (v := 8) (by omega) h51 hbound]
  rfl

theorem byteSecond_toNat_le (x : BitVec 8) : (byteSecond x).toNat ≤ 68 := by
  revert x
  decide

theorem byteSecond_mod16_le (x : BitVec 8) :
    (byteSecond x).toNat % 16 ≤ 4 := by
  revert x
  decide

theorem append_toNat_mod16 (xh : BitVec v) (xl : BitVec 8) :
    (xh ++ xl).toNat % 16 = xl.toNat % 16 := by
  rw [BitVec.toNat_append, ← Nat.shiftLeft_add_eq_or_of_lt xl.isLt]
  simp [Nat.shiftLeft_eq, Nat.add_mod]
  omega

theorem thirdStep_pack8_of_byteSecond
    (b7 b6 b5 b4 b3 b2 b1 b0 : BitVec 8) :
    thirdStep
        (pack8 (byteSecond b7) (byteSecond b6) (byteSecond b5)
          (byteSecond b4) (byteSecond b3) (byteSecond b2)
          (byteSecond b1) (byteSecond b0)) mask15 =
      pack8 (byteThird b7) (byteThird b6) (byteThird b5) (byteThird b4)
        (byteThird b3) (byteThird b2) (byteThird b1) (byteThird b0) := by
  have carry (hi lo : BitVec 8) :
      (byteSecond lo).toNat + (byteSecond hi).toNat % 16 * 16 +
          (byteSecond lo).toNat / 16 < 2 ^ 8 := by
    have hlo := byteSecond_toNat_le lo
    have hhi := byteSecond_mod16_le hi
    norm_num
    omega
  unfold mask15 pack8
  rw [thirdStep_append (v := 56) (by omega)]
  · rw [thirdStep_append (v := 48) (by omega)]
    · rw [thirdStep_append (v := 40) (by omega)]
      · rw [thirdStep_append (v := 32) (by omega)]
        · rw [thirdStep_append (v := 24) (by omega)]
          · rw [thirdStep_append (v := 16) (by omega)]
            · rw [thirdStep_append (v := 8) (by omega)]
              · rfl
              · exact carry b7 b6
            · rw [append_toNat_mod16]
              exact carry b6 b5
          · rw [append_toNat_mod16]
            exact carry b5 b4
        · rw [append_toNat_mod16]
          exact carry b4 b3
      · rw [append_toNat_mod16]
        exact carry b3 b2
    · rw [append_toNat_mod16]
      exact carry b2 b1
  · rw [append_toNat_mod16]
    exact carry b1 b0

theorem pack8_extracts (x : BitVec 64) :
    pack8 (x.extractLsb' 56 8) (x.extractLsb' 48 8)
      (x.extractLsb' 40 8) (x.extractLsb' 32 8)
      (x.extractLsb' 24 8) (x.extractLsb' 16 8)
      (x.extractLsb' 8 8) (x.extractLsb' 0 8) = x := by
  unfold pack8
  rw [BitVec.extractLsb'_append_extractLsb'_eq_extractLsb' (by omega)]
  rw [BitVec.extractLsb'_append_extractLsb'_eq_extractLsb' (by omega)]
  rw [BitVec.extractLsb'_append_extractLsb'_eq_extractLsb' (by omega)]
  rw [BitVec.extractLsb'_append_extractLsb'_eq_extractLsb' (by omega)]
  rw [BitVec.extractLsb'_append_extractLsb'_eq_extractLsb' (by omega)]
  rw [BitVec.extractLsb'_append_extractLsb'_eq_extractLsb' (by omega)]
  exact BitVec.extractLsb'_append_extractLsb'

theorem pack8_toNat (b7 b6 b5 b4 b3 b2 b1 b0 : BitVec 8) :
    (pack8 b7 b6 b5 b4 b3 b2 b1 b0).toNat =
      b7.toNat * 2 ^ 56 + b6.toNat * 2 ^ 48 +
      b5.toNat * 2 ^ 40 + b4.toNat * 2 ^ 32 +
      b3.toNat * 2 ^ 24 + b2.toNat * 2 ^ 16 +
      b1.toNat * 2 ^ 8 + b0.toNat := by
  unfold pack8
  rw [BitVec.toNat_append, ← Nat.shiftLeft_add_eq_or_of_lt b0.isLt]
  rw [BitVec.toNat_append, ← Nat.shiftLeft_add_eq_or_of_lt b1.isLt]
  rw [BitVec.toNat_append, ← Nat.shiftLeft_add_eq_or_of_lt b2.isLt]
  rw [BitVec.toNat_append, ← Nat.shiftLeft_add_eq_or_of_lt b3.isLt]
  rw [BitVec.toNat_append, ← Nat.shiftLeft_add_eq_or_of_lt b4.isLt]
  rw [BitVec.toNat_append, ← Nat.shiftLeft_add_eq_or_of_lt b5.isLt]
  rw [BitVec.toNat_append, ← Nat.shiftLeft_add_eq_or_of_lt b6.isLt]
  simp only [Nat.shiftLeft_eq]
  ring

def repeatOne : BitVec 64 :=
  pack8 1#8 1#8 1#8 1#8 1#8 1#8 1#8 1#8

theorem base256_step_lt {digit low place : Nat}
    (hdigit : digit < 256) (hlow : low < place) :
    digit * place + low < 256 * place := by
  calc
    digit * place + low < digit * place + place := Nat.add_lt_add_left hlow _
    _ = (digit + 1) * place := by ring
    _ ≤ 256 * place :=
      Nat.mul_le_mul_right place (Nat.succ_le_iff.mpr hdigit)

theorem byte_prefix_bounds
    (a7 a6 a5 a4 a3 a2 a1 a0 : Nat)
    (h7 : a7 ≤ 8) (h6 : a6 ≤ 8) (h5 : a5 ≤ 8) (h4 : a4 ≤ 8)
    (h3 : a3 ≤ 8) (h2 : a2 ≤ 8) (h1 : a1 ≤ 8) (h0 : a0 ≤ 8) :
    a0 < 256 ∧
      a0 + a1 < 256 ∧
      a0 + a1 + a2 < 256 ∧
      a0 + a1 + a2 + a3 < 256 ∧
      a0 + a1 + a2 + a3 + a4 < 256 ∧
      a0 + a1 + a2 + a3 + a4 + a5 < 256 ∧
      a0 + a1 + a2 + a3 + a4 + a5 + a6 < 256 ∧
      a0 + a1 + a2 + a3 + a4 + a5 + a6 + a7 < 256 := by
  omega

theorem byteConvolution_mul_high
    (a7 a6 a5 a4 a3 a2 a1 a0 : Nat)
    (h7 : a7 ≤ 8) (h6 : a6 ≤ 8) (h5 : a5 ≤ 8) (h4 : a4 ≤ 8)
    (h3 : a3 ≤ 8) (h2 : a2 ≤ 8) (h1 : a1 ≤ 8) (h0 : a0 ≤ 8) :
    (((a7 * 72_057_594_037_927_936 + a6 * 281_474_976_710_656 +
          a5 * 1_099_511_627_776 + a4 * 4_294_967_296 +
          a3 * 16_777_216 + a2 * 65_536 + a1 * 256 + a0) *
        72_340_172_838_076_673) % 18_446_744_073_709_551_616) /
        72_057_594_037_927_936 =
      a7 + a6 + a5 + a4 + a3 + a2 + a1 + a0 := by
  let p :=
    a7 * 72_057_594_037_927_936 + a6 * 281_474_976_710_656 +
      a5 * 1_099_511_627_776 + a4 * 4_294_967_296 +
      a3 * 16_777_216 + a2 * 65_536 + a1 * 256 + a0
  let s0 := a0
  let s1 := a0 + a1
  let s2 := a0 + a1 + a2
  let s3 := a0 + a1 + a2 + a3
  let s4 := a0 + a1 + a2 + a3 + a4
  let s5 := a0 + a1 + a2 + a3 + a4 + a5
  let s6 := a0 + a1 + a2 + a3 + a4 + a5 + a6
  let s7 := a0 + a1 + a2 + a3 + a4 + a5 + a6 + a7
  let r0 := s0
  let r1 := s1 * 256 + r0
  let r2 := s2 * 65_536 + r1
  let r3 := s3 * 16_777_216 + r2
  let r4 := s4 * 4_294_967_296 + r3
  let r5 := s5 * 1_099_511_627_776 + r4
  let r6 := s6 * 281_474_976_710_656 + r5
  let q :=
    s7 * 72_057_594_037_927_936 + r6
  let overflow :=
    (a1 + a2 + a3 + a4 + a5 + a6 + a7) +
      (a2 + a3 + a4 + a5 + a6 + a7) * 256 +
      (a3 + a4 + a5 + a6 + a7) * 65_536 +
      (a4 + a5 + a6 + a7) * 16_777_216 +
      (a5 + a6 + a7) * 4_294_967_296 +
      (a6 + a7) * 1_099_511_627_776 +
      a7 * 281_474_976_710_656
  have hproduct :
      p * 72_340_172_838_076_673 =
        q + 18_446_744_073_709_551_616 * overflow := by
    dsimp [p, q, r6, r5, r4, r3, r2, r1, r0,
      s7, s6, s5, s4, s3, s2, s1, s0, overflow]
    ring
  obtain ⟨hs0', hs1', hs2', hs3', hs4', hs5', hs6', hs7'⟩ :=
    byte_prefix_bounds a7 a6 a5 a4 a3 a2 a1 a0 h7 h6 h5 h4 h3 h2 h1 h0
  have hs0 : s0 < 256 := by simpa [s0] using hs0'
  have hs1 : s1 < 256 := by simpa [s1] using hs1'
  have hs2 : s2 < 256 := by simpa [s2] using hs2'
  have hs3 : s3 < 256 := by simpa [s3] using hs3'
  have hs4 : s4 < 256 := by simpa [s4] using hs4'
  have hs5 : s5 < 256 := by simpa [s5] using hs5'
  have hs6 : s6 < 256 := by simpa [s6] using hs6'
  have hs7 : s7 < 256 := by simpa [s7] using hs7'
  have hr0 : r0 < 256 := by simpa [r0] using hs0
  have hr1 : r1 < 65_536 := by
    dsimp [r1]
    calc
      s1 * 256 + r0 < 256 * 256 := base256_step_lt hs1 hr0
      _ = 65_536 := by norm_num
  have hr2 : r2 < 16_777_216 := by
    dsimp [r2]
    calc
      s2 * 65_536 + r1 < 256 * 65_536 := base256_step_lt hs2 hr1
      _ = 16_777_216 := by norm_num
  have hr3 : r3 < 4_294_967_296 := by
    dsimp [r3]
    calc
      s3 * 16_777_216 + r2 < 256 * 16_777_216 := base256_step_lt hs3 hr2
      _ = 4_294_967_296 := by norm_num
  have hr4 : r4 < 1_099_511_627_776 := by
    dsimp [r4]
    calc
      s4 * 4_294_967_296 + r3 < 256 * 4_294_967_296 :=
        base256_step_lt hs4 hr3
      _ = 1_099_511_627_776 := by norm_num
  have hr5 : r5 < 281_474_976_710_656 := by
    dsimp [r5]
    calc
      s5 * 1_099_511_627_776 + r4 < 256 * 1_099_511_627_776 :=
        base256_step_lt hs5 hr4
      _ = 281_474_976_710_656 := by norm_num
  have hr6 : r6 < 72_057_594_037_927_936 := by
    dsimp [r6]
    calc
      s6 * 281_474_976_710_656 + r5 < 256 * 281_474_976_710_656 :=
        base256_step_lt hs6 hr5
      _ = 72_057_594_037_927_936 := by norm_num
  have hq : q < 18_446_744_073_709_551_616 := by
    dsimp [q]
    calc
      s7 * 72_057_594_037_927_936 + r6 <
          256 * 72_057_594_037_927_936 := base256_step_lt hs7 hr6
      _ = 18_446_744_073_709_551_616 := by norm_num
  change
    (p * 72_340_172_838_076_673 % 18_446_744_073_709_551_616) /
        72_057_594_037_927_936 = _
  rw [hproduct, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt hq]
  dsimp [q]
  rw [Nat.mul_comm s7 72_057_594_037_927_936,
    Nat.mul_add_div (by norm_num), Nat.div_eq_of_lt hr6]
  dsimp [s7]
  ring

theorem pow8_nat : (2 : Nat) ^ 8 = 256 := by norm_num
theorem pow16_nat : (2 : Nat) ^ 16 = 65_536 := by norm_num
theorem pow24_nat : (2 : Nat) ^ 24 = 16_777_216 := by norm_num
theorem pow32_nat : (2 : Nat) ^ 32 = 4_294_967_296 := by norm_num
theorem pow40_nat : (2 : Nat) ^ 40 = 1_099_511_627_776 := by norm_num
theorem pow48_nat : (2 : Nat) ^ 48 = 281_474_976_710_656 := by norm_num
theorem pow56_nat : (2 : Nat) ^ 56 = 72_057_594_037_927_936 := by norm_num
theorem pow64_nat : (2 : Nat) ^ 64 = 18_446_744_073_709_551_616 := by norm_num

theorem byteConvolution_mul_high_pow
    (a7 a6 a5 a4 a3 a2 a1 a0 : Nat)
    (h7 : a7 ≤ 8) (h6 : a6 ≤ 8) (h5 : a5 ≤ 8) (h4 : a4 ≤ 8)
    (h3 : a3 ≤ 8) (h2 : a2 ≤ 8) (h1 : a1 ≤ 8) (h0 : a0 ≤ 8) :
    (((a7 * 2 ^ 56 + a6 * 2 ^ 48 + a5 * 2 ^ 40 + a4 * 2 ^ 32 +
          a3 * 2 ^ 24 + a2 * 2 ^ 16 + a1 * 2 ^ 8 + a0) *
        72_340_172_838_076_673) % 2 ^ 64) / 2 ^ 56 =
      a7 + a6 + a5 + a4 + a3 + a2 + a1 + a0 := by
  simpa only [pow8_nat, pow16_nat, pow24_nat, pow32_nat,
    pow40_nat, pow48_nat, pow56_nat, pow64_nat] using
      byteConvolution_mul_high a7 a6 a5 a4 a3 a2 a1 a0
        h7 h6 h5 h4 h3 h2 h1 h0

theorem repeatOne_toNat : repeatOne.toNat = 72_340_172_838_076_673 := by
  unfold repeatOne
  rw [pack8_toNat]
  rw [pow8_nat, pow16_nat, pow24_nat, pow32_nat,
    pow40_nat, pow48_nat, pow56_nat]
  norm_num

end Erdos848
