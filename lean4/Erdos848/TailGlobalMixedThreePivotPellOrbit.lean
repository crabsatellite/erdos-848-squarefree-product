import Erdos848.TailGlobalMixedThreePivotDeterminant
import Mathlib.Data.Int.ModEq
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

namespace Erdos848

/-!
# A kernel Pell unit inside one primitive determinant root class

Two solutions in the same primitive determinant root class do not create two
independent endpoint payments.  Their cross-products are divisible by the
normalized pivot gap, and the quotients satisfy a Pell unit equation.  This is
the algebraic input for bounding the capacity of one joint root-class fibre.
-/

set_option maxHeartbeats 0

/-- The cross-product identity behind the determinant-uniform Pell reduction. -/
theorem pellCrossProduct_identity
    {A B d p₁ q₁ p₂ q₂ : Int}
    (h₁ : A * p₁ ^ 2 - B * q₁ ^ 2 = d)
    (h₂ : A * p₂ ^ 2 - B * q₂ ^ 2 = d) :
    (A * p₁ * p₂ - B * q₁ * q₂) ^ 2 -
        A * B * (p₁ * q₂ - p₂ * q₁) ^ 2 = d ^ 2 := by
  calc
    (A * p₁ * p₂ - B * q₁ * q₂) ^ 2 -
        A * B * (p₁ * q₂ - p₂ * q₁) ^ 2 =
      (A * p₁ ^ 2 - B * q₁ ^ 2) *
        (A * p₂ ^ 2 - B * q₂ ^ 2) := by ring
    _ = d ^ 2 := by rw [h₁, h₂]; ring

/-- Dividing the two cross-products by the nonzero determinant produces an
integral solution of `u² - A B v² = 1`. -/
theorem pellUnitEquation_of_crossFactorization
    {A B d p₁ q₁ p₂ q₂ u v : Int}
    (hd : d ≠ 0)
    (h₁ : A * p₁ ^ 2 - B * q₁ ^ 2 = d)
    (h₂ : A * p₂ ^ 2 - B * q₂ ^ 2 = d)
    (hu : A * p₁ * p₂ - B * q₁ * q₂ = d * u)
    (hv : p₁ * q₂ - p₂ * q₁ = d * v) :
    u ^ 2 - A * B * v ^ 2 = 1 := by
  have hidentity := pellCrossProduct_identity h₁ h₂
  rw [hu, hv] at hidentity
  apply mul_left_cancel₀ (pow_ne_zero 2 hd)
  calc
    d ^ 2 * (u ^ 2 - A * B * v ^ 2) =
        (d * u) ^ 2 - A * B * (d * v) ^ 2 := by ring
    _ = d ^ 2 := hidentity
    _ = d ^ 2 * 1 := by ring

/-- A common invertible ratio root supplies both required cross-product
divisibilities, hence one Pell unit. -/
theorem pellUnitEquation_of_commonRoot
    {A B d p₁ q₁ p₂ q₂ z : Int}
    (hd : d ≠ 0)
    (h₁ : A * p₁ ^ 2 - B * q₁ ^ 2 = d)
    (h₂ : A * p₂ ^ 2 - B * q₂ ^ 2 = d)
    (hz₁ : z * q₁ ≡ p₁ [ZMOD d])
    (hz₂ : z * q₂ ≡ p₂ [ZMOD d])
    (hroot : A * z ^ 2 ≡ B [ZMOD d]) :
    ∃ u v : Int,
      A * p₁ * p₂ - B * q₁ * q₂ = d * u ∧
      p₁ * q₂ - p₂ * q₁ = d * v ∧
      u ^ 2 - A * B * v ^ 2 = 1 := by
  have hqCross : p₁ * q₂ ≡ p₂ * q₁ [ZMOD d] := by
    calc
      p₁ * q₂ ≡ (z * q₁) * q₂ [ZMOD d] := hz₁.symm.mul_right q₂
      _ = (z * q₂) * q₁ := by ring
      _ ≡ p₂ * q₁ [ZMOD d] := by
        simpa [mul_assoc] using hz₂.mul_right q₁
  have hpCross : A * p₁ * p₂ ≡ B * q₁ * q₂ [ZMOD d] := by
    have hproducts : p₁ * p₂ ≡ (z * q₁) * (z * q₂) [ZMOD d] :=
      hz₁.symm.mul hz₂.symm
    calc
      A * p₁ * p₂ = A * (p₁ * p₂) := by ring
      _ ≡ A * ((z * q₁) * (z * q₂)) [ZMOD d] :=
        hproducts.mul_left A
      _ = (A * z ^ 2) * (q₁ * q₂) := by ring
      _ ≡ B * (q₁ * q₂) [ZMOD d] := hroot.mul_right (q₁ * q₂)
      _ = B * q₁ * q₂ := by ring
  obtain ⟨u, hu⟩ := hpCross.symm.dvd
  obtain ⟨v, hv⟩ := hqCross.symm.dvd
  refine ⟨u, v, hu, hv, ?_⟩
  exact pellUnitEquation_of_crossFactorization hd h₁ h₂ hu hv

/-- Natural-number primitive determinant data feed the integer Pell-unit
theorem without enlarging the normalized gap or introducing a new cut. -/
theorem primitiveDeterminant_sameRoot_pellUnit
    {B C r s p₁ q₁ p₂ q₂ z : Nat}
    (hBC : B < C)
    (hdet₁ : C * (p₁ ^ 2 * r) =
      B * (q₁ ^ 2 * s) + (C - B))
    (hdet₂ : C * (p₂ ^ 2 * r) =
      B * (q₂ ^ 2 * s) + (C - B))
    (hz₁ : z * q₁ ≡ p₁ [MOD C - B])
    (hz₂ : z * q₂ ≡ p₂ [MOD C - B])
    (hroot : r * z ^ 2 ≡ s [MOD C - B]) :
    ∃ u v : Int,
      (C * r : Int) * p₁ * p₂ - (B * s : Int) * q₁ * q₂ =
          (C - B : Nat) * u ∧
      (p₁ : Int) * q₂ - p₂ * q₁ = (C - B : Nat) * v ∧
      u ^ 2 - (C * r : Int) * (B * s : Int) * v ^ 2 = 1 := by
  have hgap : (C - B : Nat) ≠ 0 := (Nat.sub_pos_of_lt hBC).ne'
  have hgapInt : ((C - B : Nat) : Int) ≠ 0 := by exact_mod_cast hgap
  have hcoeff : C ≡ B [MOD C - B] := Nat.modEq_sub hBC.le
  have hrootCoeff :
      (C * r) * z ^ 2 ≡ B * s [MOD C - B] := by
    calc
      (C * r) * z ^ 2 = C * (r * z ^ 2) := by ring
      _ ≡ C * s [MOD C - B] := by
        simpa [mul_assoc] using hroot.mul_left C
      _ ≡ B * s [MOD C - B] := hcoeff.mul_right s
  have hdet₁Int :
      (C * r : Int) * p₁ ^ 2 - (B * s : Int) * q₁ ^ 2 =
        (C - B : Nat) := by
    apply sub_eq_iff_eq_add.mpr
    have hcast := congrArg Int.ofNat hdet₁
    simp only [Int.ofNat_eq_natCast, Nat.cast_add, Nat.cast_mul,
      Nat.cast_pow] at hcast
    calc
      (C * r : Int) * p₁ ^ 2 =
          (C : Int) * (p₁ ^ 2 * r) := by ring
      _ = (B : Int) * (q₁ ^ 2 * s) + (C - B : Nat) := hcast
      _ = (C - B : Nat) + (B * s : Int) * q₁ ^ 2 := by ring
  have hdet₂Int :
      (C * r : Int) * p₂ ^ 2 - (B * s : Int) * q₂ ^ 2 =
        (C - B : Nat) := by
    apply sub_eq_iff_eq_add.mpr
    have hcast := congrArg Int.ofNat hdet₂
    simp only [Int.ofNat_eq_natCast, Nat.cast_add, Nat.cast_mul,
      Nat.cast_pow] at hcast
    calc
      (C * r : Int) * p₂ ^ 2 =
          (C : Int) * (p₂ ^ 2 * r) := by ring
      _ = (B : Int) * (q₂ ^ 2 * s) + (C - B : Nat) := hcast
      _ = (C - B : Nat) + (B * s : Int) * q₂ ^ 2 := by ring
  have hz₁Int :
      (z : Int) * q₁ ≡ p₁ [ZMOD (C - B : Nat)] :=
    Int.natCast_modEq_iff.mpr hz₁
  have hz₂Int :
      (z : Int) * q₂ ≡ p₂ [ZMOD (C - B : Nat)] :=
    Int.natCast_modEq_iff.mpr hz₂
  have hrootInt :
      ((C * r : Nat) : Int) * z ^ 2 ≡ (B * s : Nat)
        [ZMOD (C - B : Nat)] :=
    Int.natCast_modEq_iff.mpr hrootCoeff
  exact pellUnitEquation_of_commonRoot hgapInt hdet₁Int hdet₂Int
    hz₁Int hz₂Int hrootInt

/-- A Pell equation whose coefficient is a nonzero square has no nontrivial
`v`-coordinate.  This is the factorization
`(u - k*v) * (u + k*v) = 1` in `ℤ`, so both factors are simultaneously `1`
or simultaneously `-1`. -/
theorem pellUnit_squareCoefficient_v_eq_zero
    {u v k : Int} (hk : k ≠ 0)
    (hpell : u ^ 2 - k ^ 2 * v ^ 2 = 1) :
    v = 0 := by
  have hfactor : (u - k * v) * (u + k * v) = 1 := by
    calc
      (u - k * v) * (u + k * v) = u ^ 2 - k ^ 2 * v ^ 2 := by ring
      _ = 1 := hpell
  rcases Int.mul_eq_one_iff_eq_one_or_neg_one.mp hfactor with
      hpositive | hnegative
  · have hkv : k * v = 0 := by
      linarith [hpositive.1, hpositive.2]
    exact (mul_eq_zero.mp hkv).resolve_left hk
  · have hkv : k * v = 0 := by
      linarith [hnegative.1, hnegative.2]
    exact (mul_eq_zero.mp hkv).resolve_left hk

/-- The cross-factor unit acts on the left coordinate by the usual Pell
matrix.  Keeping this identity over `ℤ` avoids introducing square roots into
the later geometric-capacity argument. -/
theorem pellUnitAction_left
    {A B d p₁ q₁ p₂ q₂ u v : Int}
    (hd : d ≠ 0)
    (hdet₁ : A * p₁ ^ 2 - B * q₁ ^ 2 = d)
    (hu : A * p₁ * p₂ - B * q₁ * q₂ = d * u)
    (hv : p₁ * q₂ - p₂ * q₁ = d * v) :
    p₂ = u * p₁ + B * v * q₁ := by
  apply (mul_left_cancel₀ hd)
  calc
    d * p₂ = (A * p₁ ^ 2 - B * q₁ ^ 2) * p₂ := by rw [hdet₁]
    _ = (A * p₁ * p₂ - B * q₁ * q₂) * p₁ +
        B * (p₁ * q₂ - p₂ * q₁) * q₁ := by ring
    _ = (d * u) * p₁ + B * (d * v) * q₁ := by rw [hu, hv]
    _ = d * (u * p₁ + B * v * q₁) := by ring

/-- A positive nontrivial Pell direction more than doubles the positive left
coordinate.  Six dyadic layers therefore suffice for coordinates constrained
to a factor-`55` interval. -/
theorem pellUnitAction_left_growth_two
    {A B p₁ q₁ p₂ u v : Int}
    (hA : 0 < A) (hB : 0 < B)
    (hp₁ : 0 < p₁) (hq₁ : 0 < q₁)
    (hu : 0 < u) (hv : 0 < v)
    (hpell : u ^ 2 - A * B * v ^ 2 = 1)
    (haction : p₂ = u * p₁ + B * v * q₁) :
    2 * p₁ < p₂ := by
  have huOne : 1 ≤ u := by omega
  have huNeOne : u ≠ 1 := by
    intro huEq
    rw [huEq] at hpell
    norm_num at hpell
    rcases hpell with (hAZero | hBZero) | hvZero <;> omega
  have huTwo : 2 ≤ u := by omega
  have hmain : 2 * p₁ ≤ u * p₁ :=
    mul_le_mul_of_nonneg_right huTwo hp₁.le
  have hextra : 0 < B * v * q₁ := mul_pos (mul_pos hB hv) hq₁
  rw [haction]
  linarith

#print axioms primitiveDeterminant_sameRoot_pellUnit
#print axioms pellUnit_squareCoefficient_v_eq_zero
#print axioms pellUnitAction_left
#print axioms pellUnitAction_left_growth_two

end Erdos848
