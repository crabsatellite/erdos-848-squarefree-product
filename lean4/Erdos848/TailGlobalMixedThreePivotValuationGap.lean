import Erdos848.TailGlobalMixedValuationPartition

namespace Erdos848

/-!
# Valuation exclusion for the primitive three-pivot gap

The determinant route uses the normalized gap

`y / gcd x y - x / gcd x y`.

For four of the five literal valuation classes, the two primitive pivot
quotients are both odd.  Their positive difference therefore cannot be one.
Consequently the worst modulus-one root bucket is confined, without a new cut
or an asymptotic premise, to the existing `evenThree` branch.
-/

private theorem odd_gcdLeftQuotient_of_odd
    {x y : Nat} (hxOdd : Odd x) :
    Odd (x / x.gcd y) := by
  have hproduct : Odd (x.gcd y * (x / x.gcd y)) := by
    rw [Nat.mul_div_cancel' (Nat.gcd_dvd_left x y)]
    exact hxOdd
  exact Nat.Odd.of_mul_right hproduct

private theorem odd_gcdRightQuotient_of_odd
    {x y : Nat} (hyOdd : Odd y) :
    Odd (y / x.gcd y) := by
  have hproduct : Odd (x.gcd y * (y / x.gcd y)) := by
    rw [Nat.mul_div_cancel' (Nat.gcd_dvd_right x y)]
    exact hyOdd
  exact Nat.Odd.of_mul_right hproduct

/-- If `k` divides the common gcd but `2*k` does not divide the left pivot,
then the left primitive quotient is odd. -/
private theorem odd_gcdLeftQuotient_of_exact_common_factor
    {x y k : Nat} (hkGcd : k ∣ x.gcd y) (hnot : ¬ 2 * k ∣ x) :
    Odd (x / x.gcd y) := by
  apply Nat.not_even_iff_odd.mp
  rw [even_iff_two_dvd]
  intro htwo
  apply hnot
  have hproduct : k * 2 ∣ x.gcd y * (x / x.gcd y) :=
    Nat.mul_dvd_mul hkGcd htwo
  simpa [Nat.mul_comm, Nat.mul_div_cancel' (Nat.gcd_dvd_left x y)] using hproduct

/-- The right-hand counterpart of
`odd_gcdLeftQuotient_of_exact_common_factor`. -/
private theorem odd_gcdRightQuotient_of_exact_common_factor
    {x y k : Nat} (hkGcd : k ∣ x.gcd y) (hnot : ¬ 2 * k ∣ y) :
    Odd (y / x.gcd y) := by
  apply Nat.not_even_iff_odd.mp
  rw [even_iff_two_dvd]
  intro htwo
  apply hnot
  have hproduct : k * 2 ∣ x.gcd y * (y / x.gcd y) :=
    Nat.mul_dvd_mul hkGcd htwo
  simpa [Nat.mul_comm, Nat.mul_div_cancel' (Nat.gcd_dvd_right x y)] using hproduct

private theorem odd_primitiveQuotients_gap_even
    {x y : Nat}
    (hxOdd : Odd (x / x.gcd y))
    (hyOdd : Odd (y / x.gcd y)) :
    Even (y / x.gcd y - x / x.gcd y) :=
  Nat.Odd.sub_odd hyOdd hxOdd

private theorem even_ne_one {n : Nat} (hn : Even n) : n ≠ 1 := by
  intro hgap
  rw [hgap] at hn
  norm_num at hn

theorem gcdQuotientGap_even_of_both_odd
    {x y : Nat} (hxOdd : Odd x) (hyOdd : Odd y) :
    Even (y / x.gcd y - x / x.gcd y) :=
  odd_primitiveQuotients_gap_even
    (odd_gcdLeftQuotient_of_odd hxOdd)
    (odd_gcdRightQuotient_of_odd hyOdd)

theorem gcdQuotientGap_ne_one_of_both_odd
    {x y : Nat} (hxy : x < y) (hxOdd : Odd x) (hyOdd : Odd y) :
    y / x.gcd y - x / x.gcd y ≠ 1 := by
  exact even_ne_one (gcdQuotientGap_even_of_both_odd hxOdd hyOdd)

theorem gcdQuotientGap_even_of_mod_four_eq_two
    {x y : Nat} (hxMod : x % 4 = 2) (hyMod : y % 4 = 2) :
    Even (y / x.gcd y - x / x.gcd y) := by
  have hxTwo : 2 ∣ x := Nat.dvd_iff_mod_eq_zero.mpr (by omega)
  have hyTwo : 2 ∣ y := Nat.dvd_iff_mod_eq_zero.mpr (by omega)
  have htwoGcd : 2 ∣ x.gcd y := Nat.dvd_gcd hxTwo hyTwo
  have hxNotFour : ¬ 2 * 2 ∣ x := by
    rw [Nat.dvd_iff_mod_eq_zero]
    norm_num
    omega
  have hyNotFour : ¬ 2 * 2 ∣ y := by
    rw [Nat.dvd_iff_mod_eq_zero]
    norm_num
    omega
  exact odd_primitiveQuotients_gap_even
    (odd_gcdLeftQuotient_of_exact_common_factor htwoGcd hxNotFour)
    (odd_gcdRightQuotient_of_exact_common_factor htwoGcd hyNotFour)

theorem gcdQuotientGap_ne_one_of_mod_four_eq_two
    {x y : Nat} (hxy : x < y)
    (hxMod : x % 4 = 2) (hyMod : y % 4 = 2) :
    y / x.gcd y - x / x.gcd y ≠ 1 := by
  exact even_ne_one (gcdQuotientGap_even_of_mod_four_eq_two hxMod hyMod)

theorem gcdQuotientGap_even_of_mod_eight_eq_four
    {x y : Nat} (hxMod : x % 8 = 4) (hyMod : y % 8 = 4) :
    Even (y / x.gcd y - x / x.gcd y) := by
  have hxFour : 4 ∣ x := Nat.dvd_iff_mod_eq_zero.mpr (by omega)
  have hyFour : 4 ∣ y := Nat.dvd_iff_mod_eq_zero.mpr (by omega)
  have hfourGcd : 4 ∣ x.gcd y := Nat.dvd_gcd hxFour hyFour
  have hxNotEight : ¬ 2 * 4 ∣ x := by
    rw [Nat.dvd_iff_mod_eq_zero]
    norm_num
    omega
  have hyNotEight : ¬ 2 * 4 ∣ y := by
    rw [Nat.dvd_iff_mod_eq_zero]
    norm_num
    omega
  exact odd_primitiveQuotients_gap_even
    (odd_gcdLeftQuotient_of_exact_common_factor hfourGcd hxNotEight)
    (odd_gcdRightQuotient_of_exact_common_factor hfourGcd hyNotEight)

theorem gcdQuotientGap_ne_one_of_mod_eight_eq_four
    {x y : Nat} (hxy : x < y)
    (hxMod : x % 8 = 4) (hyMod : y % 8 = 4) :
    y / x.gcd y - x / x.gcd y ≠ 1 := by
  exact even_ne_one (gcdQuotientGap_even_of_mod_eight_eq_four hxMod hyMod)

theorem gcdQuotientGap_even_of_same_fiveMillionValuationClass
    {x y : Nat} {cls : FiveMillionValuationClass}
    (hxClass : fiveMillionValuationClassOf x = cls)
    (hyClass : fiveMillionValuationClassOf y = cls)
    (hcls : cls ≠ .evenThree) :
    Even (y / x.gcd y - x / x.gcd y) := by
  cases cls with
  | evenOne =>
      exact gcdQuotientGap_even_of_mod_four_eq_two
        (fiveMillionValuationClassOf_evenOne hxClass)
        (fiveMillionValuationClassOf_evenOne hyClass)
  | evenTwo =>
      exact gcdQuotientGap_even_of_mod_eight_eq_four
        (fiveMillionValuationClassOf_evenTwo hxClass)
        (fiveMillionValuationClassOf_evenTwo hyClass)
  | evenThree =>
      exact (hcls rfl).elim
  | oddOne =>
      exact gcdQuotientGap_even_of_both_odd
        (odd_of_mod_four_eq_one_or_three_core <|
          Or.inl (fiveMillionValuationClassOf_oddOne hxClass))
        (odd_of_mod_four_eq_one_or_three_core <|
          Or.inl (fiveMillionValuationClassOf_oddOne hyClass))
  | oddThree =>
      exact gcdQuotientGap_even_of_both_odd
        (odd_of_mod_four_eq_one_or_three_core <|
          Or.inr (fiveMillionValuationClassOf_oddThree hxClass))
        (odd_of_mod_four_eq_one_or_three_core <|
          Or.inr (fiveMillionValuationClassOf_oddThree hyClass))

/-- In the unchanged five-way Hall partition, a normalized determinant gap of
one is possible only in the `evenThree` branch. -/
theorem gcdQuotientGap_ne_one_of_same_fiveMillionValuationClass
    {x y : Nat} {cls : FiveMillionValuationClass}
    (hxy : x < y)
    (hxClass : fiveMillionValuationClassOf x = cls)
    (hyClass : fiveMillionValuationClassOf y = cls)
    (hcls : cls ≠ .evenThree) :
    y / x.gcd y - x / x.gcd y ≠ 1 := by
  exact even_ne_one <|
    gcdQuotientGap_even_of_same_fiveMillionValuationClass
      hxClass hyClass hcls

#print axioms gcdQuotientGap_even_of_same_fiveMillionValuationClass
#print axioms gcdQuotientGap_ne_one_of_same_fiveMillionValuationClass

end Erdos848
