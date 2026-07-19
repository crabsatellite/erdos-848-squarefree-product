import Erdos848.TailGlobalMixedEvenValuationRoot
import Erdos848.TailGlobalMixedEvenRootCoefficient
import Erdos848.TailGlobalMixedHighCount

namespace Erdos848

/-!
# Actual global high-tail counts for even valuation rows

This file composes the literal high-point maps, valuation-restricted survivor
sets, and sharp two-adic root factors.  Its conclusions count the actual
high-tail point sets for every `N >= 5,000,000`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- The residue projection `point |-> point / 25` is injective on one actual
base-residue class, independently of the chosen restricted target. -/
theorem globalMixedHighResidue_card_le_restrictedParameterSet
    {N pivot baseResidue X Y modulus constant : Nat}
    {survivors : Finset Nat}
    (hmap : ∀ point ∈
      twoBaseHighTailSquarePointsAtResidue N pivot Y baseResidue,
      point / 25 ∈ transformedParameterSet X Y modulus constant survivors) :
    (twoBaseHighTailSquarePointsAtResidue
        N pivot Y baseResidue).card ≤
      (transformedParameterSet X Y modulus constant survivors).card := by
  classical
  let points := twoBaseHighTailSquarePointsAtResidue
    N pivot Y baseResidue
  let target := transformedParameterSet X Y modulus constant survivors
  have hresidue : ∀ point ∈ points, point % 25 = baseResidue := by
    intro point hpoint
    exact (Finset.mem_filter.mp hpoint).2
  have hinjective : Set.InjOn (fun point : Nat => point / 25) points :=
    point_div_twentyFive_injective_on_residue hresidue
  have hsubset : points.image (fun point => point / 25) ⊆ target := by
    intro parameter hparameter
    obtain ⟨point, hpoint, rfl⟩ := Finset.mem_image.mp hparameter
    exact hmap point hpoint
  calc
    points.card = (points.image (fun point => point / 25)).card :=
      (Finset.card_image_iff.mpr hinjective).symm
    _ ≤ target.card := Finset.card_le_card hsubset

/-- Generic arithmetic assembly after the actual point set has been injected
into a restricted transformed-parameter set. -/
theorem globalMixedHighResidue_card_cast_le_restrictedCoefficient
    {N pivot baseResidue modulus constant rootFactor k : Nat}
    {survivors : Finset Nat}
    (hLower : 5_000_000 ≤ N)
    (hmodulus : 0 < modulus)
    (hcard : (twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card ≤
      (transformedParameterSet (N / 25 + 2) (N / 55)
        modulus constant survivors).card)
    (hmPos : ∀ m ∈ survivors, 0 < m)
    (hroots : ∀ m ∈ survivors,
      (transformedRootResidues m modulus constant).card ≤
        rootFactor * 2 ^ (k + 1))
    (hreciprocal : (∑ m ∈ survivors, (1 : Rat) / m) ≤ 4) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) ≤
      (globalMixedEvenRootCoefficient100
        rootFactor k survivors.card : Rat) / 100 := by
  let height := rootFactor * 2 ^ (k + 1)
  have hY : 0 < N / 55 := by omega
  have hcardQ :
      ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) baseResidue).card : Rat) ≤
        ((transformedParameterSet (N / 25 + 2) (N / 55)
          modulus constant survivors).card : Rat) := by
    exact Nat.cast_le.mpr hcard
  have hparameter :
      ((transformedParameterSet (N / 25 + 2) (N / 55)
          modulus constant survivors).card : Rat) ≤
        height * ((survivors.card : Rat) +
          2 * ((N / 25 + 2 : Nat) : Rat) / ((N / 55 : Nat) : Rat)) := by
    exact transformedParameterSet_card_le survivors hY hmodulus hmPos
      (by simpa [height] using hroots) hreciprocal
  calc
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) ≤
        ((transformedParameterSet (N / 25 + 2) (N / 55)
          modulus constant survivors).card : Rat) := hcardQ
    _ ≤ height * ((survivors.card : Rat) +
          2 * ((N / 25 + 2 : Nat) : Rat) / ((N / 55 : Nat) : Rat)) :=
      hparameter
    _ ≤ height * ((survivors.card : Rat) + 441 / 100) := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      exact add_le_add (le_refl _)
        (globalMixedSpacingPayment_le hLower)
    _ = (globalMixedEvenRootCoefficient100
          rootFactor k survivors.card : Rat) / 100 := by
      dsimp [height, globalMixedEvenRootCoefficient100]
      push_cast
      ring

theorem globalMixedNormalHighResidue_card_cast_le_evenOne
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    let survivors := globalMixedRestrictSurvivors
      (globalMixedNormalSurvivorFinset
        (globalMixedActualMaskedSupport pivot) squareCoset) 2 1
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) ≤
      (globalMixedEvenRootCoefficient100 1
        (fiveMillionPivotSupport pivot).length survivors.card : Rat) / 100 := by
  dsimp only
  let survivors := globalMixedRestrictSurvivors
    (globalMixedNormalSurvivorFinset
      (globalMixedActualMaskedSupport pivot) squareCoset) 2 1
  have hpivotDiv : 2 ∣ pivot := by
    apply Nat.dvd_iff_mod_eq_zero.mpr
    omega
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hcard :
      (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) baseResidue).card ≤
        (transformedParameterSet (N / 25 + 2) (N / 55)
          (25 * pivot) (pivot * baseResidue + 1) survivors).card := by
    apply globalMixedHighResidue_card_le_restrictedParameterSet
    intro point hpoint
    exact globalMixedNormalHighPoint_parameter_mem_evenOne
      hLower hBout hpivotResidual hpivotDiv hpoint hconstantFive hcoset
  apply globalMixedHighResidue_card_cast_le_restrictedCoefficient
    hLower (by positivity) hcard
  · intro m hm
    have hmParent :=
      (globalMixedRestrictSurvivors_mem.mp hm).1
    exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hmParent).1).1
  · intro m hm
    simpa using globalMixedNormalTransformedRoot_card_le_evenOne
      hpivotPos hpivotMod hconstantFive (m := m)
  · exact globalMixedRestrictSurvivors_reciprocal_sum_le
      (globalMixedNormalSurvivor_reciprocal_sum_le_four
        (globalMixedActualMaskedSupport pivot) squareCoset)

theorem globalMixedNormalHighResidue_card_cast_le_evenTwo
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    let survivors := globalMixedRestrictSurvivors
      (globalMixedNormalSurvivorFinset
        (globalMixedActualMaskedSupport pivot) squareCoset) 4 1
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) ≤
      (globalMixedEvenRootCoefficient100 2
        (fiveMillionPivotSupport pivot).length survivors.card : Rat) / 100 := by
  dsimp only
  let survivors := globalMixedRestrictSurvivors
    (globalMixedNormalSurvivorFinset
      (globalMixedActualMaskedSupport pivot) squareCoset) 4 1
  have hpivotDiv : 4 ∣ pivot := by
    apply Nat.dvd_iff_mod_eq_zero.mpr
    omega
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hcard :
      (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) baseResidue).card ≤
        (transformedParameterSet (N / 25 + 2) (N / 55)
          (25 * pivot) (pivot * baseResidue + 1) survivors).card := by
    apply globalMixedHighResidue_card_le_restrictedParameterSet
    intro point hpoint
    exact globalMixedNormalHighPoint_parameter_mem_evenTwo
      hLower hBout hpivotResidual hpivotDiv hpoint hconstantFive hcoset
  apply globalMixedHighResidue_card_cast_le_restrictedCoefficient
    hLower (by positivity) hcard
  · intro m hm
    have hmParent := (globalMixedRestrictSurvivors_mem.mp hm).1
    exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hmParent).1).1
  · intro m hm
    simpa using globalMixedNormalTransformedRoot_card_le_evenTwo
      hpivotPos hpivotMod hconstantFive (m := m)
  · exact globalMixedRestrictSurvivors_reciprocal_sum_le
      (globalMixedNormalSurvivor_reciprocal_sum_le_four
        (globalMixedActualMaskedSupport pivot) squareCoset)

theorem globalMixedNormalHighResidue_card_cast_le_evenThree
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    let survivors := globalMixedRestrictSurvivors
      (globalMixedNormalSurvivorFinset
        (globalMixedActualMaskedSupport pivot) squareCoset) 8 1
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) ≤
      (globalMixedEvenRootCoefficient100 4
        (fiveMillionPivotSupport pivot).length survivors.card : Rat) / 100 := by
  dsimp only
  let survivors := globalMixedRestrictSurvivors
    (globalMixedNormalSurvivorFinset
      (globalMixedActualMaskedSupport pivot) squareCoset) 8 1
  have hpivotDiv : 8 ∣ pivot := Nat.dvd_iff_mod_eq_zero.mpr hpivotMod
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hcard :
      (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) baseResidue).card ≤
        (transformedParameterSet (N / 25 + 2) (N / 55)
          (25 * pivot) (pivot * baseResidue + 1) survivors).card := by
    apply globalMixedHighResidue_card_le_restrictedParameterSet
    intro point hpoint
    exact globalMixedNormalHighPoint_parameter_mem_evenThree
      hLower hBout hpivotResidual hpivotDiv hpoint hconstantFive hcoset
  apply globalMixedHighResidue_card_cast_le_restrictedCoefficient
    hLower (by positivity) hcard
  · intro m hm
    have hmParent := (globalMixedRestrictSurvivors_mem.mp hm).1
    exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hmParent).1).1
  · intro m hm
    simpa using globalMixedNormalTransformedRoot_card_le_anyParity
      hpivotPos hconstantFive (m := m)
  · exact globalMixedRestrictSurvivors_reciprocal_sum_le
      (globalMixedNormalSurvivor_reciprocal_sum_le_four
        (globalMixedActualMaskedSupport pivot) squareCoset)

theorem globalMixedFiveTwistHighResidue_card_cast_le_evenOne
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    let survivors := globalMixedRestrictSurvivors
      (globalMixedTwistSurvivorFinset
        (globalMixedActualMaskedSupport pivot) squareCoset) 2 1
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) ≤
      (globalMixedEvenRootCoefficient100 1
        (fiveMillionPivotSupport pivot).length survivors.card : Rat) / 100 := by
  dsimp only
  let survivors := globalMixedRestrictSurvivors
    (globalMixedTwistSurvivorFinset
      (globalMixedActualMaskedSupport pivot) squareCoset) 2 1
  have hpivotDiv : 2 ∣ pivot := by
    apply Nat.dvd_iff_mod_eq_zero.mpr
    omega
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hcard :
      (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) baseResidue).card ≤
        (transformedParameterSet (N / 25 + 2) (N / 55)
          (5 * pivot) ((pivot * baseResidue + 1) / 5) survivors).card := by
    apply globalMixedHighResidue_card_le_restrictedParameterSet
    intro point hpoint
    exact globalMixedFiveTwistHighPoint_parameter_mem_evenOne
      hLower hBout hpivotResidual hpivotDiv hpoint hconstantFive
        hconstantTwentyFive hcoset
  apply globalMixedHighResidue_card_cast_le_restrictedCoefficient
    hLower (by positivity) hcard
  · intro m hm
    have hmParent := (globalMixedRestrictSurvivors_mem.mp hm).1
    exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hmParent).1).1
  · intro m hm
    simpa using globalMixedFiveTwistTransformedRoot_card_le_evenOne
      hpivotPos hpivotMod hconstantFive hconstantTwentyFive (m := m)
  · exact globalMixedRestrictSurvivors_reciprocal_sum_le
      (globalMixedTwistSurvivor_reciprocal_sum_le_four
        (globalMixedActualMaskedSupport pivot) squareCoset)

theorem globalMixedFiveTwistHighResidue_card_cast_le_evenTwo
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    let survivors := globalMixedRestrictSurvivors
      (globalMixedTwistSurvivorFinset
        (globalMixedActualMaskedSupport pivot) squareCoset) 4 1
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) ≤
      (globalMixedEvenRootCoefficient100 2
        (fiveMillionPivotSupport pivot).length survivors.card : Rat) / 100 := by
  dsimp only
  let survivors := globalMixedRestrictSurvivors
    (globalMixedTwistSurvivorFinset
      (globalMixedActualMaskedSupport pivot) squareCoset) 4 1
  have hpivotDiv : 4 ∣ pivot := by
    apply Nat.dvd_iff_mod_eq_zero.mpr
    omega
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hcard :
      (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) baseResidue).card ≤
        (transformedParameterSet (N / 25 + 2) (N / 55)
          (5 * pivot) ((pivot * baseResidue + 1) / 5) survivors).card := by
    apply globalMixedHighResidue_card_le_restrictedParameterSet
    intro point hpoint
    exact globalMixedFiveTwistHighPoint_parameter_mem_evenTwo
      hLower hBout hpivotResidual hpivotDiv hpoint hconstantFive
        hconstantTwentyFive hcoset
  apply globalMixedHighResidue_card_cast_le_restrictedCoefficient
    hLower (by positivity) hcard
  · intro m hm
    have hmParent := (globalMixedRestrictSurvivors_mem.mp hm).1
    exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hmParent).1).1
  · intro m hm
    simpa using globalMixedFiveTwistTransformedRoot_card_le_evenTwo
      hpivotPos hpivotMod hconstantFive hconstantTwentyFive (m := m)
  · exact globalMixedRestrictSurvivors_reciprocal_sum_le
      (globalMixedTwistSurvivor_reciprocal_sum_le_four
        (globalMixedActualMaskedSupport pivot) squareCoset)

theorem globalMixedFiveTwistHighResidue_card_cast_le_evenThree
    {N : Nat} {B : Finset Nat} {pivot baseResidue : Nat}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 0)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    let survivors := globalMixedRestrictSurvivors
      (globalMixedTwistSurvivorFinset
        (globalMixedActualMaskedSupport pivot) squareCoset) 8 5
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card : Rat) ≤
      (globalMixedEvenRootCoefficient100 4
        (fiveMillionPivotSupport pivot).length survivors.card : Rat) / 100 := by
  dsimp only
  let survivors := globalMixedRestrictSurvivors
    (globalMixedTwistSurvivorFinset
      (globalMixedActualMaskedSupport pivot) squareCoset) 8 5
  have hpivotDiv : 8 ∣ pivot := Nat.dvd_iff_mod_eq_zero.mpr hpivotMod
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  have hcard :
      (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / 55) baseResidue).card ≤
        (transformedParameterSet (N / 25 + 2) (N / 55)
          (5 * pivot) ((pivot * baseResidue + 1) / 5) survivors).card := by
    apply globalMixedHighResidue_card_le_restrictedParameterSet
    intro point hpoint
    exact globalMixedFiveTwistHighPoint_parameter_mem_evenThree
      hLower hBout hpivotResidual hpivotDiv hpoint hconstantFive
        hconstantTwentyFive hcoset
  apply globalMixedHighResidue_card_cast_le_restrictedCoefficient
    hLower (by positivity) hcard
  · intro m hm
    have hmParent := (globalMixedRestrictSurvivors_mem.mp hm).1
    exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hmParent).1).1
  · intro m hm
    simpa using globalMixedFiveTwistTransformedRoot_card_le_anyParity
      hpivotPos hconstantFive hconstantTwentyFive (m := m)
  · exact globalMixedRestrictSurvivors_reciprocal_sum_le
      (globalMixedTwistSurvivor_reciprocal_sum_le_four
        (globalMixedActualMaskedSupport pivot) squareCoset)

#print axioms globalMixedHighResidue_card_cast_le_restrictedCoefficient
#print axioms globalMixedNormalHighResidue_card_cast_le_evenOne
#print axioms globalMixedNormalHighResidue_card_cast_le_evenTwo
#print axioms globalMixedNormalHighResidue_card_cast_le_evenThree
#print axioms globalMixedFiveTwistHighResidue_card_cast_le_evenOne
#print axioms globalMixedFiveTwistHighResidue_card_cast_le_evenTwo
#print axioms globalMixedFiveTwistHighResidue_card_cast_le_evenThree

end Erdos848
