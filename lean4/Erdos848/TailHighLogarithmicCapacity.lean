import Erdos848.TailHighRootAnalytic
import Erdos848.TailHighLargeSquareEventBound

namespace Erdos848

/-!
# Explicit logarithmic capacity bounds

The large-square Pell fibres have capacity `clog 5 bound`.  Above an
explicit fourth-root floor, this logarithm is at most one forty-first of the
standard fourth-root ceiling.  The proof is entirely integer arithmetic.
Writing `e = q / 41`, the direct estimate

`(41 * (e + 1))^4 ≤ 5^e`

for `e ≥ 17` is substantially sharper than passing through an eighth power
of an extra square-root ceiling.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem fortyOne_mul_succ_pow_four_le_five_pow
    {e : Nat} (he : 17 ≤ e) :
    (41 * (e + 1)) ^ 4 ≤ 5 ^ e := by
  induction e, he using Nat.le_induction with
  | base => norm_num
  | succ e he ih =>
      have hlinear :
          3 * (e + 2) ≤ 4 * (e + 1) := by
        omega
      have hpower :
          (3 * (e + 2)) ^ 4 ≤
            (4 * (e + 1)) ^ 4 :=
        Nat.pow_le_pow_left hlinear 4
      have hstep :
          (e + 2) ^ 4 ≤ 5 * (e + 1) ^ 4 := by
        have hscaled :
            81 * (e + 2) ^ 4 ≤
              81 * (5 * (e + 1) ^ 4) := by
          calc
            81 * (e + 2) ^ 4 =
                (3 * (e + 2)) ^ 4 := by ring
            _ ≤ (4 * (e + 1)) ^ 4 := hpower
            _ = 256 * (e + 1) ^ 4 := by ring
            _ ≤ 405 * (e + 1) ^ 4 := by
              gcongr
              norm_num
            _ = 81 * (5 * (e + 1) ^ 4) := by
              ring
        exact Nat.le_of_mul_le_mul_left hscaled (by norm_num)
      calc
        (41 * (e + 1 + 1)) ^ 4 =
            41 ^ 4 * (e + 2) ^ 4 := by ring
        _ ≤ 41 ^ 4 *
            (5 * (e + 1) ^ 4) := by
              gcongr
        _ = 5 * (41 * (e + 1)) ^ 4 := by ring
        _ ≤ 5 * 5 ^ e :=
          Nat.mul_le_mul_left 5 ih
        _ = 5 ^ (e + 1) := by
          rw [pow_succ]
          ring

theorem highFourthRootCeiling_ratio_le_sharp
    {rootFloor lower n : Nat}
    (hRootFloor : 0 < rootFloor)
    (hFourth : rootFloor ^ 4 ≤ lower)
    (hLower : lower ≤ n) :
    (((Nat.sqrt (Nat.sqrt n) + 1 : Nat) : Rat) / n) ≤
      ((rootFloor + 1 : Nat) : Rat) / rootFloor ^ 4 := by
  let root := Nat.sqrt (Nat.sqrt n)
  have hFourthN : rootFloor ^ 4 ≤ n := hFourth.trans hLower
  have hFloorSquare :
      rootFloor ^ 2 ≤ Nat.sqrt n := by
    apply Nat.le_sqrt'.2
    calc
      (rootFloor ^ 2) ^ 2 = rootFloor ^ 4 := by ring
      _ ≤ n := hFourthN
  have hFloorRoot : rootFloor ≤ root := by
    dsimp [root]
    exact Nat.le_sqrt'.2 hFloorSquare
  have hRootSquare :
      root ^ 2 ≤ Nat.sqrt n := by
    dsimp [root]
    exact Nat.sqrt_le' _
  have hSqrtSquare :
      (Nat.sqrt n) ^ 2 ≤ n := Nat.sqrt_le' _
  have hRootFourth : root ^ 4 ≤ n := by
    calc
      root ^ 4 = (root ^ 2) ^ 2 := by ring
      _ ≤ (Nat.sqrt n) ^ 2 :=
        Nat.pow_le_pow_left hRootSquare 2
      _ ≤ n := hSqrtSquare
  have hRootPos : 0 < root := hRootFloor.trans_le hFloorRoot
  have hlinear :
      rootFloor * (root + 1) ≤
        (rootFloor + 1) * root := by
    nlinarith
  have hcubes :
      rootFloor ^ 3 ≤ root ^ 3 :=
    Nat.pow_le_pow_left hFloorRoot 3
  have hcross :
      (root + 1) * rootFloor ^ 4 ≤
        (rootFloor + 1) * root ^ 4 := by
    calc
      (root + 1) * rootFloor ^ 4 =
          (rootFloor * (root + 1)) * rootFloor ^ 3 := by ring
      _ ≤ ((rootFloor + 1) * root) * root ^ 3 :=
        Nat.mul_le_mul hlinear hcubes
      _ = (rootFloor + 1) * root ^ 4 := by ring
  have hfirst :
      (((root + 1 : Nat) : Rat) / n) ≤
        ((root + 1 : Nat) : Rat) / root ^ 4 := by
    have hrootFourthQ : ((root ^ 4 : Nat) : Rat) ≤ n := by
      exact_mod_cast hRootFourth
    have hrootFourthPos : (0 : Rat) < root ^ 4 := by positivity
    exact div_le_div_of_nonneg_left
      (by positivity) hrootFourthPos hrootFourthQ
  have hsecond :
      (((root + 1 : Nat) : Rat) / root ^ 4) ≤
        ((rootFloor + 1 : Nat) : Rat) / rootFloor ^ 4 := by
    have hrootFourthPos : (0 : Rat) < root ^ 4 := by positivity
    have hfloorFourthPos : (0 : Rat) < rootFloor ^ 4 := by positivity
    exact (div_le_div_iff₀ hrootFourthPos hfloorFourthPos).2
      (by exact_mod_cast hcross)
  simpa [root] using hfirst.trans hsecond

theorem clog_five_le_fourthRootCeiling_div_fortyOne
    {rootFloor lower bound : Nat}
    (hRootFloor : 697 ≤ rootFloor)
    (hFourth : rootFloor ^ 4 ≤ lower)
    (hLower : lower ≤ bound) :
    (Nat.clog 5 bound : Rat) ≤
      ((Nat.sqrt (Nat.sqrt bound) + 1 : Nat) : Rat) / 41 := by
  let q := Nat.sqrt (Nat.sqrt bound) + 1
  let e := q / 41
  have hFloorPos : 0 < rootFloor := by omega
  have hFourthBound : rootFloor ^ 4 ≤ bound :=
    hFourth.trans hLower
  have hFloorSquare :
      rootFloor ^ 2 ≤ Nat.sqrt bound := by
    apply Nat.le_sqrt'.2
    calc
      (rootFloor ^ 2) ^ 2 = rootFloor ^ 4 := by ring
      _ ≤ bound := hFourthBound
  have hFloorRoot :
      rootFloor ≤ Nat.sqrt (Nat.sqrt bound) :=
    Nat.le_sqrt'.2 hFloorSquare
  have hqLower : 697 ≤ q := by
    dsimp [q]
    omega
  have heLower : 17 ≤ e := by
    dsimp [e]
    exact (Nat.le_div_iff_mul_le (by norm_num : 0 < 41)).2
      (by omega)
  have hqPower :
      bound < q ^ 4 := by
    have hfirst :
        bound <
          (Nat.sqrt bound + 1) *
            (Nat.sqrt bound + 1) := by
      simpa [Nat.succ_eq_add_one] using Nat.lt_succ_sqrt bound
    have hsecond :
        Nat.sqrt bound < q * q := by
      simpa [q, Nat.succ_eq_add_one] using
        Nat.lt_succ_sqrt (Nat.sqrt bound)
    have hsecondLe : Nat.sqrt bound + 1 ≤ q * q := by omega
    calc
      bound <
          (Nat.sqrt bound + 1) *
            (Nat.sqrt bound + 1) := hfirst
      _ ≤ (q * q) * (q * q) :=
        Nat.mul_le_mul hsecondLe hsecondLe
      _ = q ^ 4 := by ring
  have hqUpper : q < 41 * (e + 1) := by
    dsimp [e]
    exact Nat.lt_mul_div_succ q (by norm_num)
  have hqFourth :
      q ^ 4 ≤ (41 * (e + 1)) ^ 4 :=
    Nat.pow_le_pow_left hqUpper.le 4
  have hboundFive : bound ≤ 5 ^ e := by
    exact hqPower.le.trans <|
      hqFourth.trans <|
        fortyOne_mul_succ_pow_four_le_five_pow heLower
  have hclog : Nat.clog 5 bound ≤ e :=
    (Nat.clog_le_iff_le_pow (by norm_num)).2 hboundFive
  have hfortyOne : 41 * e ≤ q := by
    dsimp [e]
    exact Nat.mul_div_le q 41
  have hscaled :
      (41 : Rat) * Nat.clog 5 bound ≤ q := by
    exact_mod_cast
      (calc
        41 * Nat.clog 5 bound ≤ 41 * e :=
          Nat.mul_le_mul_left 41 hclog
        _ ≤ q := hfortyOne)
  dsimp [q] at hscaled ⊢
  linarith

#print axioms highFourthRootCeiling_ratio_le_sharp
#print axioms clog_five_le_fourthRootCeiling_div_fortyOne

end Erdos848
