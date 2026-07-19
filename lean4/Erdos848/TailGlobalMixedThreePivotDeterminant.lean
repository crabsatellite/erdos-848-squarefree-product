import Mathlib.Data.Nat.ModEq
import Mathlib.Data.Nat.Prime.Defs
import Mathlib.Data.ZMod.Basic

namespace Erdos848

/-!
# Primitive determinant compression for two pivot events

This is the endpoint merger needed by the distinct-prime branch.  It keeps
both square-prime equations simultaneously and divides the two pivots by their
actual gcd.  The resulting determinant has primitive coefficients, so its
right-hand side is the normalized pivot gap rather than a separately paid
terminal for every witness prime.

The module deliberately imports only natural gcd and congruence arithmetic.
It is independent of the generated prefix certificate and the large tail
assembly.
-/

/-- Dividing two positive pivots by their gcd gives primitive coefficients. -/
theorem primitivePivotQuotients_coprime
    {x y : Nat} (hx : 0 < x) :
    Nat.Coprime (x / x.gcd y) (y / x.gcd y) :=
  Nat.coprime_div_gcd_div_gcd (Nat.gcd_pos_of_pos_left y hx)

/-- The left primitive coefficient is also coprime to the primitive gap. -/
theorem primitivePivotLeft_coprime_gap
    {B C : Nat} (hBC : B ≤ C) (hcoprime : Nat.Coprime B C) :
    Nat.Coprime B (C - B) :=
  (Nat.coprime_sub_self_right hBC).mpr hcoprime

/-- Cross-multiplication cancels the common point before any inequality or
prime-range estimate is introduced. -/
theorem squareEvent_primitive_balance
    {x y point p q r s g B C : Nat}
    (hx : g * B = x) (hy : g * C = y)
    (hp : p ^ 2 * r = x * point + 1)
    (hq : q ^ 2 * s = y * point + 1) :
    C * (p ^ 2 * r) + B = B * (q ^ 2 * s) + C := by
  calc
    C * (p ^ 2 * r) + B = C * (x * point + 1) + B := by rw [hp]
    _ = B * (y * point + 1) + C := by
      rw [← hx, ← hy]
      simp only [Nat.mul_add, Nat.mul_one]
      ac_rfl
    _ = B * (q ^ 2 * s) + C := by rw [hq]

/-- Natural-number form of
`C p² r - B q² s = C - B`.  Keeping it subtraction-free avoids an
unnecessary cast to the integers in later kernel counting. -/
theorem squareEvent_primitive_determinant
    {x y point p q r s g B C : Nat}
    (hBC : B ≤ C)
    (hx : g * B = x) (hy : g * C = y)
    (hp : p ^ 2 * r = x * point + 1)
    (hq : q ^ 2 * s = y * point + 1) :
    C * (p ^ 2 * r) = B * (q ^ 2 * s) + (C - B) := by
  have hbalance := squareEvent_primitive_balance hx hy hp hq
  exact Nat.add_right_cancel <| by
    calc
      C * (p ^ 2 * r) + B = B * (q ^ 2 * s) + C := hbalance
      _ = B * (q ^ 2 * s) + ((C - B) + B) := by
        rw [Nat.sub_add_cancel hBC]
      _ = (B * (q ^ 2 * s) + (C - B)) + B := by
        rw [Nat.add_assoc]

/-- The determinant identity cancels the primitive pivot coefficient modulo
the primitive gap. -/
theorem primitiveDeterminant_modEq
    {B C p q r s : Nat}
    (hBC : B ≤ C) (hcoprime : Nat.Coprime B C)
    (hdet : C * (p ^ 2 * r) =
      B * (q ^ 2 * s) + (C - B)) :
    p ^ 2 * r ≡ q ^ 2 * s [MOD C - B] := by
  have hdetMod :
      C * (p ^ 2 * r) ≡ B * (q ^ 2 * s) [MOD C - B] := by
    rw [hdet]
    simp
  have hcoeff : C ≡ B [MOD C - B] := Nat.modEq_sub hBC
  have hscaled :
      B * (p ^ 2 * r) ≡ B * (q ^ 2 * s) [MOD C - B] :=
    (hcoeff.mul_right (p ^ 2 * r)).symm.trans hdetMod
  exact Nat.ModEq.cancel_left_of_coprime
    (primitivePivotLeft_coprime_gap hBC hcoprime).symm.gcd_eq_one
    hscaled

/-- If `z*q ≡ p` modulo the primitive gap and `q` is invertible there, the
two complementary quotients lie on the same square-root class. -/
theorem primitiveDeterminant_root_modEq
    {delta p q r s z : Nat}
    (hbase : p ^ 2 * r ≡ q ^ 2 * s [MOD delta])
    (hz : z * q ≡ p [MOD delta])
    (hqDelta : Nat.Coprime q delta) :
    r * z ^ 2 ≡ s [MOD delta] := by
  have hzSquare := hz.pow 2
  have hchain :
      q ^ 2 * (r * z ^ 2) ≡ q ^ 2 * s [MOD delta] := by
    calc
      q ^ 2 * (r * z ^ 2) = r * (z * q) ^ 2 := by
        simp [pow_two, Nat.mul_comm, Nat.mul_left_comm]
      _ ≡ r * p ^ 2 [MOD delta] := hzSquare.mul_left r
      _ = p ^ 2 * r := Nat.mul_comm _ _
      _ ≡ q ^ 2 * s [MOD delta] := hbase
  exact Nat.ModEq.cancel_left_of_coprime
    (hqDelta.pow_left 2).symm.gcd_eq_one hchain

/-- Canonical representative of `p*q⁻¹` modulo the primitive gap. -/
noncomputable def primitiveDeterminantRatioRoot
    (delta p q : Nat) : Nat :=
  ((p : ZMod delta) * (q : ZMod delta)⁻¹).val

theorem primitiveDeterminantRatioRoot_lt
    {delta p q : Nat} (hdelta : 0 < delta) :
    primitiveDeterminantRatioRoot delta p q < delta := by
  letI : NeZero delta := ⟨hdelta.ne'⟩
  exact ZMod.val_lt _

theorem primitiveDeterminantRatioRoot_mul_modEq
    {delta p q : Nat} (hdelta : 0 < delta)
    (hqDelta : Nat.Coprime q delta) :
    primitiveDeterminantRatioRoot delta p q * q ≡ p [MOD delta] := by
  letI : NeZero delta := ⟨hdelta.ne'⟩
  rw [← ZMod.natCast_eq_natCast_iff]
  unfold primitiveDeterminantRatioRoot
  rw [Nat.cast_mul, ZMod.natCast_zmod_val]
  calc
    ((p : ZMod delta) * (q : ZMod delta)⁻¹) * q =
        p * (q * (q : ZMod delta)⁻¹) := by ac_rfl
    _ = p * 1 := by rw [ZMod.coe_mul_inv_eq_one q hqDelta]
    _ = p := mul_one _

/-- Complete primitive determinant-to-root-class reduction for two actual
square-prime equations. -/
theorem squareEvent_primitive_root_modEq
    {x y point p q r s g B C z : Nat}
    (hBC : B ≤ C) (hcoprime : Nat.Coprime B C)
    (hx : g * B = x) (hy : g * C = y)
    (hp : p ^ 2 * r = x * point + 1)
    (hq : q ^ 2 * s = y * point + 1)
    (hz : z * q ≡ p [MOD C - B])
    (hqGap : Nat.Coprime q (C - B)) :
    r * z ^ 2 ≡ s [MOD C - B] := by
  apply primitiveDeterminant_root_modEq
    (primitiveDeterminant_modEq hBC hcoprime
      (squareEvent_primitive_determinant hBC hx hy hp hq)) hz hqGap

/-- Canonical determinant identity with no caller-supplied normalization
data. -/
theorem squareEvent_gcdQuotient_determinant
    {x y point p q r s : Nat}
    (hxy : x ≤ y)
    (hp : p ^ 2 * r = x * point + 1)
    (hq : q ^ 2 * s = y * point + 1) :
    (y / x.gcd y) * (p ^ 2 * r) =
      (x / x.gcd y) * (q ^ 2 * s) +
        (y / x.gcd y - x / x.gcd y) := by
  exact squareEvent_primitive_determinant
    (Nat.div_le_div_right hxy)
    (Nat.mul_div_cancel' (Nat.gcd_dvd_left x y))
    (Nat.mul_div_cancel' (Nat.gcd_dvd_right x y)) hp hq

/-- The normalized gap divides the literal pivot difference. -/
theorem gcdQuotientGap_dvd_pivotDifference
    {x y : Nat} :
    y / x.gcd y - x / x.gcd y ∣ y - x := by
  have hmul :
      x.gcd y * (y / x.gcd y - x / x.gcd y) = y - x := by
    rw [Nat.mul_sub_left_distrib,
      Nat.mul_div_cancel' (Nat.gcd_dvd_right x y),
      Nat.mul_div_cancel' (Nat.gcd_dvd_left x y)]
  refine ⟨x.gcd y, ?_⟩
  simpa [Nat.mul_comm] using hmul.symm

theorem gcdQuotientGap_pos
    {x y : Nat} (hxy : x < y) :
    0 < y / x.gcd y - x / x.gcd y := by
  have hquotientLt : x / x.gcd y < y / x.gcd y := by
    apply Nat.lt_of_not_ge
    intro hreverse
    have hmul := Nat.mul_le_mul_left (x.gcd y) hreverse
    rw [Nat.mul_div_cancel' (Nat.gcd_dvd_right x y),
      Nat.mul_div_cancel' (Nat.gcd_dvd_left x y)] at hmul
    omega
  exact Nat.sub_pos_of_lt hquotientLt

/-- Every failure of invertibility in the determinant modulus is attached to
an actual prime divisor of the literal pivot difference. -/
theorem prime_dvd_pivotDifference_of_not_coprime_gcdQuotientGap
    {x y q : Nat} (hqPrime : Nat.Prime q)
    (hqGap : ¬ Nat.Coprime q
      (y / x.gcd y - x / x.gcd y)) :
    q ∣ y - x := by
  have hqDvdGap : q ∣ y / x.gcd y - x / x.gcd y := by
    by_contra hnot
    exact hqGap (hqPrime.coprime_iff_not_dvd.mpr hnot)
  exact hqDvdGap.trans gcdQuotientGap_dvd_pivotDifference

/-- A prime larger than the positive literal pivot difference is
unconditionally invertible modulo the normalized gap. -/
theorem prime_coprime_gcdQuotientGap_of_pivotDifference_lt
    {x y q : Nat} (hxy : x < y) (hqPrime : Nat.Prime q)
    (hdifference : y - x < q) :
    Nat.Coprime q (y / x.gcd y - x / x.gcd y) := by
  by_contra hnot
  have hdiv :=
    prime_dvd_pivotDifference_of_not_coprime_gcdQuotientGap hqPrime hnot
  have hpositive : 0 < y - x := Nat.sub_pos_of_lt hxy
  have hle : q ≤ y - x := Nat.le_of_dvd hpositive hdiv
  omega

/-- Canonical root-class reduction.  The only exceptional primes are handled
by `prime_dvd_pivotDifference_of_not_coprime_gcdQuotientGap`. -/
theorem squareEvent_gcdQuotient_root_modEq
    {x y point p q r s z : Nat}
    (hx : 0 < x) (hxy : x ≤ y)
    (hp : p ^ 2 * r = x * point + 1)
    (hq : q ^ 2 * s = y * point + 1)
    (hz : z * q ≡ p [MOD y / x.gcd y - x / x.gcd y])
    (hqGap : Nat.Coprime q
      (y / x.gcd y - x / x.gcd y)) :
    r * z ^ 2 ≡ s [MOD y / x.gcd y - x / x.gcd y] := by
  exact squareEvent_primitive_root_modEq
    (Nat.div_le_div_right hxy) (primitivePivotQuotients_coprime hx)
    (Nat.mul_div_cancel' (Nat.gcd_dvd_left x y))
    (Nat.mul_div_cancel' (Nat.gcd_dvd_right x y))
    hp hq hz hqGap

/-- Canonical root-class reduction with the modular inverse selected inside
the kernel proof. -/
theorem squareEvent_gcdQuotient_canonicalRoot_modEq
    {x y point p q r s : Nat}
    (hx : 0 < x) (hxy : x < y)
    (hp : p ^ 2 * r = x * point + 1)
    (hq : q ^ 2 * s = y * point + 1)
    (hqGap : Nat.Coprime q
      (y / x.gcd y - x / x.gcd y)) :
    r * (primitiveDeterminantRatioRoot
      (y / x.gcd y - x / x.gcd y) p q) ^ 2 ≡
        s [MOD y / x.gcd y - x / x.gcd y] := by
  exact squareEvent_gcdQuotient_root_modEq hx hxy.le hp hq
    (primitiveDeterminantRatioRoot_mul_modEq
      (gcdQuotientGap_pos hxy) hqGap) hqGap

#print axioms squareEvent_gcdQuotient_canonicalRoot_modEq

end Erdos848
