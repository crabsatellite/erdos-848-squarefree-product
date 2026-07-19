import Erdos848.TailGlobalMixedHighParameter
import Erdos848.TailGlobalMixedEvenRoot
import Erdos848.TailCombinatorics
import Erdos848.TailGlobalMixedEvenSurvivorDefs

namespace Erdos848

/-!
# Valuation-restricted global mixed survivors

For an even Hall pivot, every actual transformed quotient carries the exact
two-adic restriction forced by the equation `p^2 * m = pivot * point + 1`.
The normal quotient is `1` modulo `2`, `4`, or `8`; in the five-twist row the
stored quotient has residues `1`, `1`, or `5`, respectively.  These filters
are applied to the literal global survivor finsets, so no ambient interval of
values of `N` is scanned.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/- Congruence-restriction definitions moved to
`TailGlobalMixedEvenSurvivorDefs` so finite support semantics remain
independent of the actual high-point dependency graph. -/

/-- A witness in a transformed parameter set can be moved to a congruence
restriction once the literal witness equation forces that restriction. -/
lemma transformedParameterSet_mem_restrictSurvivors
    {X Y modulus constant quotientMod quotientResidue t : Nat}
    {survivors : Finset Nat}
    (ht : t ∈ transformedParameterSet X Y modulus constant survivors)
    (hquotient : ∀ m ∈ survivors,
      ∀ p ∈ Finset.range (constant + modulus * X + 1),
        Y < p → p ^ 2 * m = constant + modulus * t →
          m % quotientMod = quotientResidue) :
    t ∈ transformedParameterSet X Y modulus constant
      (globalMixedRestrictSurvivors survivors quotientMod quotientResidue) := by
  apply Finset.mem_filter.mpr
  have htParts := Finset.mem_filter.mp ht
  refine ⟨htParts.1, ?_⟩
  obtain ⟨m, hm, p, hpRange, hpY, hequation⟩ := htParts.2
  exact ⟨m,
    globalMixedRestrictSurvivors_mem.mpr
      ⟨hm, hquotient m hm p hpRange hpY hequation⟩,
    p, hpRange, hpY, hequation⟩

lemma odd_base_of_even_pivot_transformedEquation
    {pivot baseResidue t m p factor constant : Nat}
    (hpivotEven : 2 ∣ pivot)
    (hconstant : constant = pivot * baseResidue + 1)
    (hfactor : factor = 25)
    (hequation : p ^ 2 * m = constant + (factor * pivot) * t) :
    p % 2 = 1 := by
  have hpivotEven' : Even pivot := by
    simpa [even_iff_two_dvd] using hpivotEven
  have htailEven : Even (pivot * (baseResidue + 25 * t)) :=
    hpivotEven'.mul_right _
  have hrightOdd : Odd (pivot * (baseResidue + 25 * t) + 1) :=
    htailEven.add_one
  have hproductOdd : Odd (p ^ 2 * m) := by
    rw [hequation, hconstant, hfactor]
    convert hrightOdd using 1 <;> ring
  have hpSquareOdd : Odd (p ^ 2) := Nat.Odd.of_mul_left hproductOdd
  have hpNotEven : ¬2 ∣ p := by
    intro hpEven
    exact hpSquareOdd.not_two_dvd_nat (dvd_pow hpEven (by norm_num))
  have hpModLt := Nat.mod_lt p (by norm_num : 0 < 2)
  have hpModNe : p % 2 ≠ 0 := by
    intro hpZero
    exact hpNotEven (Nat.dvd_iff_mod_eq_zero.mpr hpZero)
  omega

lemma normalTransformedWitness_mod_two
    {pivot baseResidue t m p : Nat}
    (hpivot : 2 ∣ pivot)
    (hequation : p ^ 2 * m =
      (pivot * baseResidue + 1) + (25 * pivot) * t) :
    m % 2 = 1 := by
  have hpOdd := odd_base_of_even_pivot_transformedEquation hpivot rfl rfl hequation
  have hraw : p ^ 2 * m = pivot * (baseResidue + 25 * t) + 1 := by
    rw [hequation]
    ring
  exact valuation_one_quotient_mod_two hpOdd hpivot hraw

lemma normalTransformedWitness_mod_four
    {pivot baseResidue t m p : Nat}
    (hpivot : 4 ∣ pivot)
    (hequation : p ^ 2 * m =
      (pivot * baseResidue + 1) + (25 * pivot) * t) :
    m % 4 = 1 := by
  have hpivotTwo : 2 ∣ pivot := dvd_trans (by norm_num) hpivot
  have hpOdd := odd_base_of_even_pivot_transformedEquation hpivotTwo rfl rfl hequation
  have hraw : p ^ 2 * m = pivot * (baseResidue + 25 * t) + 1 := by
    rw [hequation]
    ring
  exact valuation_two_quotient_mod_four hpOdd hpivot hraw

lemma normalTransformedWitness_mod_eight
    {pivot baseResidue t m p : Nat}
    (hpivot : 8 ∣ pivot)
    (hequation : p ^ 2 * m =
      (pivot * baseResidue + 1) + (25 * pivot) * t) :
    m % 8 = 1 := by
  have hpivotTwo : 2 ∣ pivot := dvd_trans (by norm_num) hpivot
  have hpOdd := odd_base_of_even_pivot_transformedEquation hpivotTwo rfl rfl hequation
  have hraw : p ^ 2 * m = pivot * (baseResidue + 25 * t) + 1 := by
    rw [hequation]
    ring
  exact valuation_three_quotient_mod_eight hpOdd hpivot hraw

lemma fiveTwistTransformedWitness_rawEquation
    {pivot baseResidue t m p : Nat}
    (hfive : 5 ∣ pivot * baseResidue + 1)
    (hequation : p ^ 2 * m =
      (pivot * baseResidue + 1) / 5 + (5 * pivot) * t) :
    p ^ 2 * (5 * m) = pivot * (baseResidue + 25 * t) + 1 := by
  have hconstant : 5 * ((pivot * baseResidue + 1) / 5) =
      pivot * baseResidue + 1 := Nat.mul_div_cancel' hfive
  calc
    p ^ 2 * (5 * m) = 5 * (p ^ 2 * m) := by ring
    _ = 5 * ((pivot * baseResidue + 1) / 5 + (5 * pivot) * t) := by
      rw [hequation]
    _ = pivot * (baseResidue + 25 * t) + 1 := by
      rw [mul_add, hconstant]
      ring

lemma fiveTwistTransformedWitness_mod_two
    {pivot baseResidue t m p : Nat}
    (hpivot : 2 ∣ pivot)
    (hfive : 5 ∣ pivot * baseResidue + 1)
    (hequation : p ^ 2 * m =
      (pivot * baseResidue + 1) / 5 + (5 * pivot) * t) :
    m % 2 = 1 := by
  have hraw := fiveTwistTransformedWitness_rawEquation hfive hequation
  have hpOdd : p % 2 = 1 := by
    have hnormal : p ^ 2 * (5 * m) =
        (pivot * baseResidue + 1) + (25 * pivot) * t := by
      rw [hraw]
      ring
    exact odd_base_of_even_pivot_transformedEquation hpivot rfl rfl hnormal
  have hmod := valuation_one_quotient_mod_two hpOdd hpivot hraw
  have hmul := Nat.mul_mod 5 m 2
  omega

lemma fiveTwistTransformedWitness_mod_four
    {pivot baseResidue t m p : Nat}
    (hpivot : 4 ∣ pivot)
    (hfive : 5 ∣ pivot * baseResidue + 1)
    (hequation : p ^ 2 * m =
      (pivot * baseResidue + 1) / 5 + (5 * pivot) * t) :
    m % 4 = 1 := by
  have hraw := fiveTwistTransformedWitness_rawEquation hfive hequation
  have hpivotTwo : 2 ∣ pivot := dvd_trans (by norm_num) hpivot
  have hpOdd : p % 2 = 1 := by
    have hnormal : p ^ 2 * (5 * m) =
        (pivot * baseResidue + 1) + (25 * pivot) * t := by
      rw [hraw]
      ring
    exact odd_base_of_even_pivot_transformedEquation hpivotTwo rfl rfl hnormal
  have hmod := valuation_two_quotient_mod_four hpOdd hpivot hraw
  have hmul := Nat.mul_mod 5 m 4
  omega

lemma fiveTwistTransformedWitness_mod_eight
    {pivot baseResidue t m p : Nat}
    (hpivot : 8 ∣ pivot)
    (hfive : 5 ∣ pivot * baseResidue + 1)
    (hequation : p ^ 2 * m =
      (pivot * baseResidue + 1) / 5 + (5 * pivot) * t) :
    m % 8 = 5 := by
  have hraw := fiveTwistTransformedWitness_rawEquation hfive hequation
  have hpivotTwo : 2 ∣ pivot := dvd_trans (by norm_num) hpivot
  have hpOdd : p % 2 = 1 := by
    have hnormal : p ^ 2 * (5 * m) =
        (pivot * baseResidue + 1) + (25 * pivot) * t := by
      rw [hraw]
      ring
    exact odd_base_of_even_pivot_transformedEquation hpivotTwo rfl rfl hnormal
  have hmod := valuation_three_quotient_mod_eight hpOdd hpivot hraw
  have hmul := Nat.mul_mod 5 m 8
  have hmLt := Nat.mod_lt m (by norm_num : 0 < 8)
  omega

/-- The actual normal high point lies in the `v₂ = 1` restricted survivor
set whenever its pivot is even. -/
theorem globalMixedNormalHighPoint_parameter_mem_evenOne
    {N : Nat} {B : Finset Nat} {pivot point baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivot : 2 ∣ pivot)
    (hpoint : point ∈
      twoBaseHighTailSquarePointsAtResidue N pivot (N / 55) baseResidue)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    point / 25 ∈ transformedParameterSet (N / 25 + 2) (N / 55)
      (25 * pivot) (pivot * baseResidue + 1)
      (globalMixedRestrictSurvivors
        (globalMixedNormalSurvivorFinset
          (globalMixedActualMaskedSupport pivot) squareCoset) 2 1) := by
  apply transformedParameterSet_mem_restrictSurvivors
    (globalMixedNormalHighPoint_parameter_mem hLower hBout hpivotResidual
      hpoint hconstantFive hcoset)
  intro m hm p hpRange hpY hequation
  exact normalTransformedWitness_mod_two hpivot hequation

theorem globalMixedNormalHighPoint_parameter_mem_evenTwo
    {N : Nat} {B : Finset Nat} {pivot point baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivot : 4 ∣ pivot)
    (hpoint : point ∈
      twoBaseHighTailSquarePointsAtResidue N pivot (N / 55) baseResidue)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    point / 25 ∈ transformedParameterSet (N / 25 + 2) (N / 55)
      (25 * pivot) (pivot * baseResidue + 1)
      (globalMixedRestrictSurvivors
        (globalMixedNormalSurvivorFinset
          (globalMixedActualMaskedSupport pivot) squareCoset) 4 1) := by
  apply transformedParameterSet_mem_restrictSurvivors
    (globalMixedNormalHighPoint_parameter_mem hLower hBout hpivotResidual
      hpoint hconstantFive hcoset)
  intro m hm p hpRange hpY hequation
  exact normalTransformedWitness_mod_four hpivot hequation

theorem globalMixedNormalHighPoint_parameter_mem_evenThree
    {N : Nat} {B : Finset Nat} {pivot point baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivot : 8 ∣ pivot)
    (hpoint : point ∈
      twoBaseHighTailSquarePointsAtResidue N pivot (N / 55) baseResidue)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    point / 25 ∈ transformedParameterSet (N / 25 + 2) (N / 55)
      (25 * pivot) (pivot * baseResidue + 1)
      (globalMixedRestrictSurvivors
        (globalMixedNormalSurvivorFinset
          (globalMixedActualMaskedSupport pivot) squareCoset) 8 1) := by
  apply transformedParameterSet_mem_restrictSurvivors
    (globalMixedNormalHighPoint_parameter_mem hLower hBout hpivotResidual
      hpoint hconstantFive hcoset)
  intro m hm p hpRange hpY hequation
  exact normalTransformedWitness_mod_eight hpivot hequation

/-- Five-twist analogues.  The stored quotient is the raw quotient divided by
five, hence the last residue is `5 mod 8`. -/
theorem globalMixedFiveTwistHighPoint_parameter_mem_evenOne
    {N : Nat} {B : Finset Nat} {pivot point baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivot : 2 ∣ pivot)
    (hpoint : point ∈
      twoBaseHighTailSquarePointsAtResidue N pivot (N / 55) baseResidue)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    point / 25 ∈ transformedParameterSet (N / 25 + 2) (N / 55)
      (5 * pivot) ((pivot * baseResidue + 1) / 5)
      (globalMixedRestrictSurvivors
        (globalMixedTwistSurvivorFinset
          (globalMixedActualMaskedSupport pivot) squareCoset) 2 1) := by
  apply transformedParameterSet_mem_restrictSurvivors
    (globalMixedFiveTwistHighPoint_parameter_mem hLower hBout hpivotResidual
      hpoint hconstantFive hconstantTwentyFive hcoset)
  intro m hm p hpRange hpY hequation
  exact fiveTwistTransformedWitness_mod_two hpivot hconstantFive hequation

theorem globalMixedFiveTwistHighPoint_parameter_mem_evenTwo
    {N : Nat} {B : Finset Nat} {pivot point baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivot : 4 ∣ pivot)
    (hpoint : point ∈
      twoBaseHighTailSquarePointsAtResidue N pivot (N / 55) baseResidue)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    point / 25 ∈ transformedParameterSet (N / 25 + 2) (N / 55)
      (5 * pivot) ((pivot * baseResidue + 1) / 5)
      (globalMixedRestrictSurvivors
        (globalMixedTwistSurvivorFinset
          (globalMixedActualMaskedSupport pivot) squareCoset) 4 1) := by
  apply transformedParameterSet_mem_restrictSurvivors
    (globalMixedFiveTwistHighPoint_parameter_mem hLower hBout hpivotResidual
      hpoint hconstantFive hconstantTwentyFive hcoset)
  intro m hm p hpRange hpY hequation
  exact fiveTwistTransformedWitness_mod_four hpivot hconstantFive hequation

theorem globalMixedFiveTwistHighPoint_parameter_mem_evenThree
    {N : Nat} {B : Finset Nat} {pivot point baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivot : 8 ∣ pivot)
    (hpoint : point ∈
      twoBaseHighTailSquarePointsAtResidue N pivot (N / 55) baseResidue)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    point / 25 ∈ transformedParameterSet (N / 25 + 2) (N / 55)
      (5 * pivot) ((pivot * baseResidue + 1) / 5)
      (globalMixedRestrictSurvivors
        (globalMixedTwistSurvivorFinset
          (globalMixedActualMaskedSupport pivot) squareCoset) 8 5) := by
  apply transformedParameterSet_mem_restrictSurvivors
    (globalMixedFiveTwistHighPoint_parameter_mem hLower hBout hpivotResidual
      hpoint hconstantFive hconstantTwentyFive hcoset)
  intro m hm p hpRange hpY hequation
  exact fiveTwistTransformedWitness_mod_eight hpivot hconstantFive hequation

#print axioms globalMixedNormalHighPoint_parameter_mem_evenOne
#print axioms globalMixedNormalHighPoint_parameter_mem_evenTwo
#print axioms globalMixedNormalHighPoint_parameter_mem_evenThree
#print axioms globalMixedFiveTwistHighPoint_parameter_mem_evenOne
#print axioms globalMixedFiveTwistHighPoint_parameter_mem_evenTwo
#print axioms globalMixedFiveTwistHighPoint_parameter_mem_evenThree

end Erdos848
