import Mathlib

namespace Erdos848

/-!
## Lightweight modular arithmetic for literal tail events

These lemmas are independent of every numerical tail certificate.  They
express the unique-root facts used by the periodic finite sieve and by the
one-prime progression counts directly in `ZMod`, including composite prime
square moduli.
-/

/-- In any commutative ring, an equation `a * x = -1` makes `a`
left-invertible, so the right-hand solution is unique. -/
lemma mul_add_one_right_unique
    {R : Type*} [CommRing R] {a x y : R}
    (hx : a * x + 1 = 0) (hy : a * y + 1 = 0) :
    x = y := by
  have hax : a * x = -1 := by
    calc
      a * x = (a * x + 1) - 1 := by ring
      _ = -1 := by rw [hx]; ring
  have hay : a * y = -1 := by
    calc
      a * y = (a * y + 1) - 1 := by ring
      _ = -1 := by rw [hy]; ring
  have hleft : (-x) * a = 1 := by
    calc
      (-x) * a = -(a * x) := by ring
      _ = 1 := by rw [hax]; ring
  have hdiff : a * (x - y) = 0 := by
    calc
      a * (x - y) = a * x - a * y := by ring
      _ = 0 := by rw [hax, hay]; ring
  apply sub_eq_zero.mp
  calc
    x - y = 1 * (x - y) := by ring
    _ = ((-x) * a) * (x - y) := by rw [hleft]
    _ = (-x) * (a * (x - y)) := by ring
    _ = 0 := by rw [hdiff]; ring

lemma mul_add_one_left_unique
    {R : Type*} [CommRing R] {a x y : R}
    (hx : x * a + 1 = 0) (hy : y * a + 1 = 0) :
    x = y := by
  exact mul_add_one_right_unique
    (a := a) (x := x) (y := y)
    (by simpa [mul_comm] using hx) (by simpa [mul_comm] using hy)

lemma affine_eq_of_unit_coefficient
    {R : Type*} [CommRing R] {coefficient inverse base x y : R}
    (hinverse : inverse * coefficient = 1)
    (hxy : coefficient * x + base = coefficient * y + base) :
    x = y := by
  calc
    x = (inverse * coefficient) * x := by rw [hinverse]; simp
    _ = inverse * (coefficient * x + base - base) := by ring
    _ = inverse * (coefficient * y + base - base) := by rw [hxy]
    _ = (inverse * coefficient) * y := by ring
    _ = y := by rw [hinverse]; simp

lemma fin_eq_of_zmod_val_eq
    {n : ℕ} [NeZero n] {x y : Fin n}
    (hxy : (x.val : ZMod n) = (y.val : ZMod n)) :
    x = y := by
  apply Fin.ext
  have hmod := (ZMod.natCast_eq_natCast_iff' x.val y.val n).mp hxy
  simpa [Nat.mod_eq_of_lt x.isLt, Nat.mod_eq_of_lt y.isLt] using hmod

/-- Casting a literal divisibility event into `ZMod` loses no information. -/
lemma zmod_mul_add_one_eq_zero_of_dvd
    {modulus pivot point : ℕ}
    (hevent : modulus ∣ pivot * point + 1) :
    (pivot : ZMod modulus) * (point : ZMod modulus) + 1 = 0 := by
  have hzero : ((pivot * point + 1 : ℕ) : ZMod modulus) = 0 :=
    (ZMod.natCast_eq_zero_iff (pivot * point + 1) modulus).2 hevent
  simpa only [Nat.cast_add, Nat.cast_mul, Nat.cast_one] using hzero

/-- A point on a literal mod-25 base progression is represented in every
`ZMod` layer by its quotient coordinate. -/
lemma zmod_base_quotient_equation_of_event
    {modulus baseResidue pivot point : ℕ}
    (hpoint : point % 25 = baseResidue)
    (hevent : modulus ∣ pivot * point + 1) :
    (pivot : ZMod modulus) *
        ((25 : ZMod modulus) * ((point / 25 : ℕ) : ZMod modulus) +
          (baseResidue : ZMod modulus)) + 1 = 0 := by
  have hdecomp : point = baseResidue + 25 * (point / 25) := by
    calc
      point = point % 25 + 25 * (point / 25) :=
        (Nat.mod_add_div point 25).symm
      _ = baseResidue + 25 * (point / 25) := by rw [hpoint]
  have hpointCast : (point : ZMod modulus) =
      (baseResidue : ZMod modulus) +
        (25 : ZMod modulus) * ((point / 25 : ℕ) : ZMod modulus) := by
    have hcast := congrArg (fun n : ℕ => (n : ZMod modulus)) hdecomp
    simpa only [Nat.cast_add, Nat.cast_mul] using hcast
  have hquotient :
      (25 : ZMod modulus) * ((point / 25 : ℕ) : ZMod modulus) +
          (baseResidue : ZMod modulus) = (point : ZMod modulus) := by
    simpa [add_comm] using hpointCast.symm
  rw [hquotient]
  exact zmod_mul_add_one_eq_zero_of_dvd hevent

#print axioms mul_add_one_right_unique
#print axioms zmod_base_quotient_equation_of_event

end Erdos848
