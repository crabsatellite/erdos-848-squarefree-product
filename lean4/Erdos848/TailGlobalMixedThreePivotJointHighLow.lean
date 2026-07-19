import Erdos848.TailPrimeProgressionCounting

namespace Erdos848

/-!
# Joint high-low arithmetic for the distinct-prime branch

The finite/high split is too coarse if the high-prime event is counted after
forgetting the second witness.  This module keeps the actual `q^2` event on
the other pivot.

There are two structural gains.  First, on either sharp mod-25 base class the
parameter `point / 25` occupies a single class modulo `q^2`.  Second, if the
high-prime quotient is not a unit modulo `q`, then `q` divides the literal
pivot difference.  Thus the generic transformed-root row receives the full
`q^2` progression spacing, while every non-unit exception is attached to an
actual factor of an edge difference rather than to the whole prime range.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- Two points on the same sharp mod-25 class, with the same square-prime
event, have parameters congruent modulo the entire prime square. -/
theorem sameSquarePrimeEvent_parameter_modEq
    {q pivot point₁ point₂ baseResidue : ℕ}
    (hq : Nat.Prime q) (hqFive : q ≠ 5)
    (hresidue₁ : point₁ % 25 = baseResidue)
    (hresidue₂ : point₂ % 25 = baseResidue)
    (hevent₁ : q ^ 2 ∣ pivot * point₁ + 1)
    (hevent₂ : q ^ 2 ∣ pivot * point₂ + 1) :
    point₁ / 25 ≡ point₂ / 25 [MOD q ^ 2] := by
  have hpointMod : point₁ ≡ point₂ [MOD q ^ 2] := by
    have hpoint₁Z := zmod_mul_add_one_eq_zero_of_dvd hevent₁
    have hpoint₂Z := zmod_mul_add_one_eq_zero_of_dvd hevent₂
    exact (ZMod.natCast_eq_natCast_iff point₁ point₂ (q ^ 2)).mp
      (mul_add_one_right_unique hpoint₁Z hpoint₂Z)
  have hpoint₁Decomp :
      point₁ = baseResidue + 25 * (point₁ / 25) := by
    calc
      point₁ = point₁ % 25 + 25 * (point₁ / 25) :=
        (Nat.mod_add_div point₁ 25).symm
      _ = baseResidue + 25 * (point₁ / 25) := by rw [hresidue₁]
  have hpoint₂Decomp :
      point₂ = baseResidue + 25 * (point₂ / 25) := by
    calc
      point₂ = point₂ % 25 + 25 * (point₂ / 25) :=
        (Nat.mod_add_div point₂ 25).symm
      _ = baseResidue + 25 * (point₂ / 25) := by rw [hresidue₂]
  have hscaled :
      25 * (point₁ / 25) ≡ 25 * (point₂ / 25) [MOD q ^ 2] := by
    apply Nat.ModEq.add_right_cancel' baseResidue
    have hexpanded :
        baseResidue + 25 * (point₁ / 25) ≡
          baseResidue + 25 * (point₂ / 25) [MOD q ^ 2] := by
      rw [← hpoint₁Decomp, ← hpoint₂Decomp]
      exact hpointMod
    simpa [add_comm] using hexpanded
  have hcoprime : Nat.Coprime 25 (q ^ 2) :=
    tail_coprime_25_prime_square hq hqFive
  exact Nat.ModEq.cancel_left_of_coprime hcoprime.symm.gcd_eq_one hscaled

/-- If a prime dividing the high-prime quotient also supplies the other
pivot's square event, then it divides the literal pivot difference.  No
primality or distinctness assumption on the high witness is needed here. -/
theorem squareEvent_quotientPrime_dvd_pivotDifference
    {p q x y point m : ℕ}
    (hq : Nat.Prime q)
    (hquotient : p ^ 2 * m = x * point + 1)
    (hqEvent : q ^ 2 ∣ y * point + 1)
    (hqM : q ∣ m) :
    q ∣ y - x := by
  have hqPoint : ¬ q ∣ point := by
    intro hdiv
    have hqSum : q ∣ y * point + 1 :=
      Nat.dvd_trans (dvd_pow_self q (by norm_num : 2 ≠ 0)) hqEvent
    have hqProduct : q ∣ y * point := dvd_mul_of_dvd_right hdiv y
    have hqOne : q ∣ 1 := (Nat.dvd_add_right hqProduct).mp hqSum
    exact hq.not_dvd_one hqOne
  have hqX : q ∣ x * point + 1 := by
    rw [← hquotient]
    exact dvd_mul_of_dvd_right hqM (p ^ 2)
  have hqY : q ∣ y * point + 1 :=
    Nat.dvd_trans (dvd_pow_self q (by norm_num : 2 ≠ 0)) hqEvent
  have hqProduct : q ∣ (y - x) * point := by
    have hsub := Nat.dvd_sub hqY hqX
    simpa [Nat.sub_mul] using hsub
  have hcoprime : Nat.Coprime q point :=
    hq.coprime_iff_not_dvd.mpr hqPoint
  exact hcoprime.dvd_of_dvd_mul_right hqProduct

/-- Away from the actual prime divisors of an edge difference, the
high-prime quotient is a unit modulo the retained low prime. -/
theorem squareEvent_quotient_coprime_of_not_dvd_pivotDifference
    {p q x y point m : ℕ}
    (hq : Nat.Prime q)
    (hquotient : p ^ 2 * m = x * point + 1)
    (hqEvent : q ^ 2 ∣ y * point + 1)
    (hqDiff : ¬ q ∣ y - x) :
    Nat.Coprime m q := by
  have hqM : ¬ q ∣ m := by
    intro hdiv
    exact hqDiff (squareEvent_quotientPrime_dvd_pivotDifference
      hq hquotient hqEvent hdiv)
  exact (hq.coprime_iff_not_dvd.mpr hqM).symm

/-- A finite point set on one sharp base progression, all carrying the same
actual `q^2` event, maps into one literal `q^2` residue slice of any supplied
transformed target.  The offset is selected from an actual point when the set
is nonempty, so no residue class is guessed or externally enumerated. -/
theorem squareEventPoints_card_le_parameterResidueSlice
    {q pivot baseResidue : ℕ}
    (hq : Nat.Prime q) (hqFive : q ≠ 5)
    (points target : Finset ℕ)
    (hresidue : ∀ point ∈ points, point % 25 = baseResidue)
    (hevent : ∀ point ∈ points, q ^ 2 ∣ pivot * point + 1)
    (htarget : ∀ point ∈ points, point / 25 ∈ target) :
    ∃ offset < q ^ 2,
      points.card ≤
        (target.filter fun parameter => parameter % (q ^ 2) = offset).card := by
  classical
  by_cases hempty : points = ∅
  · refine ⟨0, pow_pos hq.pos 2, ?_⟩
    simp [hempty]
  · obtain ⟨anchor, hanchor⟩ := Finset.nonempty_iff_ne_empty.mpr hempty
    let offset := (anchor / 25) % (q ^ 2)
    have hoffset : offset < q ^ 2 :=
      Nat.mod_lt _ (pow_pos hq.pos 2)
    have hinjective : Set.InjOn (fun point : ℕ => point / 25) points := by
      intro a ha b hb hab
      have haResidue := hresidue a ha
      have hbResidue := hresidue b hb
      change a / 25 = b / 25 at hab
      calc
        a = a % 25 + 25 * (a / 25) := (Nat.mod_add_div a 25).symm
        _ = baseResidue + 25 * (b / 25) := by rw [haResidue, hab]
        _ = b % 25 + 25 * (b / 25) := by rw [hbResidue]
        _ = b := Nat.mod_add_div b 25
    have hsubset : points.image (fun point => point / 25) ⊆
        target.filter fun parameter => parameter % (q ^ 2) = offset := by
      intro parameter hparameter
      obtain ⟨point, hpoint, rfl⟩ := Finset.mem_image.mp hparameter
      apply Finset.mem_filter.mpr
      refine ⟨htarget point hpoint, ?_⟩
      have hmod := sameSquarePrimeEvent_parameter_modEq
        hq hqFive (hresidue point hpoint) (hresidue anchor hanchor)
          (hevent point hpoint) (hevent anchor hanchor)
      change (point / 25) % (q ^ 2) =
        (anchor / 25) % (q ^ 2) at hmod
      simpa [offset] using hmod
    refine ⟨offset, hoffset, ?_⟩
    calc
      points.card = (points.image fun point => point / 25).card :=
        (Finset.card_image_iff.mpr hinjective).symm
      _ ≤ (target.filter fun parameter =>
          parameter % (q ^ 2) = offset).card :=
        Finset.card_le_card hsubset

#print axioms sameSquarePrimeEvent_parameter_modEq
#print axioms squareEvent_quotientPrime_dvd_pivotDifference
#print axioms squareEvent_quotient_coprime_of_not_dvd_pivotDifference
#print axioms squareEventPoints_card_le_parameterResidueSlice

end Erdos848
