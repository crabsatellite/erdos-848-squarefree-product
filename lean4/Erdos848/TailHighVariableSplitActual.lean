import Erdos848.TailHighVariableSplitCore
import Erdos848.TailGlobalMixedEvenHighCount
import Erdos848.TailHighRootFourthCoefficient
import Erdos848.TailHighRootSharpCoefficient

namespace Erdos848

/-!
# Actual high-root points at a variable split

The fixed `3025` support masks are useful near the finite endpoint, but they
are not needed in the far tail.  This module maps every literal high square
event into the complete quotient interval `1 .. split^2` and pays for that
interval by the elementary reciprocal bound from
`TailHighVariableSplitCore`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def highVariableRootParameterBudget (N split : Nat) : Rat :=
  (split ^ 2 : Nat) +
    ((N / 25 + 2 : Nat) : Rat) /
        (2 * ((N / split : Nat) : Rat)) *
      (2 * split)

def highVariableRootPointCeilingOf
    (rootFactor N split : Nat) : Rat :=
  ((26 * rootFactor : Nat) / 3 : Rat) *
    (Nat.sqrt (Nat.sqrt N) + 1) *
    highVariableRootParameterBudget N split

def highVariableRootPointCeiling (N split : Nat) : Rat :=
  highVariableRootPointCeilingOf 4 N split

lemma highVariableRootParameterBudget_nonneg
    {N split : Nat} (hY : 0 < N / split) :
    0 ≤ highVariableRootParameterBudget N split := by
  unfold highVariableRootParameterBudget
  positivity

theorem highVariableNormalHighPoint_parameter_mem
    {N : Nat} {B : Finset Nat}
    {pivot point baseResidue split : Nat}
    (hSplit : 0 < split)
    (hYFive : 5 < N / split)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpoint :
      point ∈
        twoBaseHighTailSquarePointsAtResidue
          N pivot (N / split) baseResidue)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1) :
    point / 25 ∈
      transformedParameterSet
        (N / 25 + 2) (N / split)
        (25 * pivot) (pivot * baseResidue + 1)
        (highVariableQuotientSurvivors split) := by
  classical
  have hpointParts := Finset.mem_filter.mp hpoint
  have hpointHigh := hpointParts.1
  have hpointResidue := hpointParts.2
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotUpper : pivot ≤ N :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).2
  obtain ⟨p, m, hpPrime, hpLarge, hequation, hmLower, hmUpper⟩ :=
    highVariableHighTailSquarePoint_has_bounded_quotient
      hSplit hpivotUpper hpointHigh
  have hpFive : ¬ 5 ∣ p := by
    intro hpDvd
    have hpEq : 5 = p :=
      (Nat.prime_dvd_prime_iff_eq (by norm_num) hpPrime).mp hpDvd
    subst p
    omega
  have hpointDecomp :
      point = baseResidue + 25 * (point / 25) := by
    calc
      point = point % 25 + 25 * (point / 25) :=
        (Nat.mod_add_div point 25).symm
      _ = baseResidue + 25 * (point / 25) := by
        rw [hpointResidue]
  have htransformed :
      p ^ 2 * m =
        (pivot * baseResidue + 1) +
          (25 * pivot) * (point / 25) := by
    calc
      p ^ 2 * m = pivot * point + 1 := hequation
      _ = (pivot * baseResidue + 1) +
          (25 * pivot) * (point / 25) := by
        conv_lhs => rw [hpointDecomp]
        ring
  have hmSurvivor :
      m ∈ highVariableQuotientSurvivors split := by
    apply Finset.mem_Ico.mpr
    exact ⟨hmLower, by omega⟩
  have hpointLe : point ≤ N :=
    (Finset.mem_Icc.mp
      (lowBaseSet_subset_Icc N
        (Finset.mem_filter.mp hpointHigh).1)).2
  have htRange : point / 25 < N / 25 + 2 := by
    have hdivLe : point / 25 ≤ N / 25 :=
      Nat.div_le_div_right hpointLe
    omega
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_range.mpr htRange, ?_⟩
  refine ⟨m, hmSurvivor, p, ?_, hpLarge, htransformed⟩
  apply Finset.mem_range.mpr
  have hpSquare : p < p ^ 2 := by
    nlinarith [hpPrime.two_le]
  have hpProduct : p < p ^ 2 * m := by
    exact hpSquare.trans_le (by
      simpa using Nat.mul_le_mul_left (p ^ 2) hmLower)
  have hparameterLe :
      (pivot * baseResidue + 1) +
          (25 * pivot) * (point / 25) ≤
        (pivot * baseResidue + 1) +
          (25 * pivot) * (N / 25 + 2) := by
    gcongr
  rw [htransformed] at hpProduct
  omega

theorem highVariableFiveTwistHighPoint_parameter_mem
    {N : Nat} {B : Finset Nat}
    {pivot point baseResidue split : Nat}
    (hSplit : 0 < split)
    (hYFive : 5 < N / split)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpoint :
      point ∈
        twoBaseHighTailSquarePointsAtResidue
          N pivot (N / split) baseResidue)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1) :
    point / 25 ∈
      transformedParameterSet
        (N / 25 + 2) (N / split)
        (5 * pivot) ((pivot * baseResidue + 1) / 5)
        (highVariableQuotientSurvivors split) := by
  classical
  have hpointParts := Finset.mem_filter.mp hpoint
  have hpointHigh := hpointParts.1
  have hpointResidue := hpointParts.2
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotUpper : pivot ≤ N :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).2
  obtain ⟨p, m, hpPrime, hpLarge, hequation, hmLower, hmUpper⟩ :=
    highVariableHighTailSquarePoint_has_bounded_quotient
      hSplit hpivotUpper hpointHigh
  have hpFive : ¬ 5 ∣ p := by
    intro hpDvd
    have hpEq : 5 = p :=
      (Nat.prime_dvd_prime_iff_eq (by norm_num) hpPrime).mp hpDvd
    subst p
    omega
  have hpointDecomp :
      point = baseResidue + 25 * (point / 25) := by
    calc
      point = point % 25 + 25 * (point / 25) :=
        (Nat.mod_add_div point 25).symm
      _ = baseResidue + 25 * (point / 25) := by
        rw [hpointResidue]
  have hrawTransformed :
      p ^ 2 * m =
        (pivot * baseResidue + 1) +
          (25 * pivot) * (point / 25) := by
    calc
      p ^ 2 * m = pivot * point + 1 := hequation
      _ = (pivot * baseResidue + 1) +
          (25 * pivot) * (point / 25) := by
        conv_lhs => rw [hpointDecomp]
        ring
  have hmFive : 5 ∣ m := by
    have htail : 5 ∣ (25 * pivot) * (point / 25) := by
      refine ⟨5 * pivot * (point / 25), ?_⟩
      ring
    have hright :
        5 ∣ (pivot * baseResidue + 1) +
          (25 * pivot) * (point / 25) :=
      Nat.dvd_add hconstantFive htail
    rw [← hrawTransformed] at hright
    rcases (show Nat.Prime 5 by norm_num).dvd_mul.mp hright with
      hpSquare | hm
    · exact False.elim
        (hpFive ((show Nat.Prime 5 by norm_num).dvd_of_dvd_pow hpSquare))
    · exact hm
  have hmEq : 5 * (m / 5) = m :=
    Nat.mul_div_cancel' hmFive
  have hmDivLower : 1 ≤ m / 5 := by
    have hmFiveLe : 5 ≤ m :=
      Nat.le_of_dvd (by omega) hmFive
    exact (Nat.le_div_iff_mul_le (by norm_num : 0 < 5)).mpr (by omega)
  have hmDivUpper : m / 5 ≤ split ^ 2 :=
    (Nat.div_le_self m 5).trans hmUpper
  have hconstantEq :
      5 * ((pivot * baseResidue + 1) / 5) =
        pivot * baseResidue + 1 :=
    Nat.mul_div_cancel' hconstantFive
  have htransformed :
      p ^ 2 * (m / 5) =
        (pivot * baseResidue + 1) / 5 +
          (5 * pivot) * (point / 25) := by
    apply Nat.mul_left_cancel (by norm_num : 0 < 5)
    calc
      5 * (p ^ 2 * (m / 5)) = p ^ 2 * (5 * (m / 5)) := by
        ring
      _ = p ^ 2 * m := by rw [hmEq]
      _ = (pivot * baseResidue + 1) +
          (25 * pivot) * (point / 25) := hrawTransformed
      _ = 5 * ((pivot * baseResidue + 1) / 5 +
          (5 * pivot) * (point / 25)) := by
        rw [mul_add, hconstantEq]
        ring
  have hmSurvivor :
      m / 5 ∈ highVariableQuotientSurvivors split := by
    apply Finset.mem_Ico.mpr
    exact ⟨hmDivLower, by omega⟩
  have hpointLe : point ≤ N :=
    (Finset.mem_Icc.mp
      (lowBaseSet_subset_Icc N
        (Finset.mem_filter.mp hpointHigh).1)).2
  have htRange : point / 25 < N / 25 + 2 := by
    have hdivLe : point / 25 ≤ N / 25 :=
      Nat.div_le_div_right hpointLe
    omega
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_range.mpr htRange, ?_⟩
  refine ⟨m / 5, hmSurvivor, p, ?_, hpLarge, htransformed⟩
  apply Finset.mem_range.mpr
  have hpSquare : p < p ^ 2 := by
    nlinarith [hpPrime.two_le]
  have hpProduct : p < p ^ 2 * (m / 5) := by
    exact hpSquare.trans_le (by
      simpa using Nat.mul_le_mul_left (p ^ 2) hmDivLower)
  have hparameterLe :
      (pivot * baseResidue + 1) / 5 +
          (5 * pivot) * (point / 25) ≤
        (pivot * baseResidue + 1) / 5 +
          (5 * pivot) * (N / 25 + 2) := by
    gcongr
  rw [htransformed] at hpProduct
  omega

private theorem highVariableParameterSet_card_cast_le_of_rootFactor
    {N pivot split modulus constant rootFactor : Nat}
    (hSplit : 0 < split)
    (hY : 0 < N / split)
    (hroots :
      ∀ m ∈ highVariableQuotientSurvivors split,
        (transformedRootResidues m modulus constant).card ≤
          rootFactor *
            2 ^ ((fiveMillionPivotSupport pivot).length + 1))
    (hmodulus : 0 < modulus) :
    ((transformedParameterSet
        (N / 25 + 2) (N / split)
        modulus constant
        (highVariableQuotientSurvivors split)).card : Rat) ≤
      (rootFactor *
          2 ^ ((fiveMillionPivotSupport pivot).length + 1) : Nat) *
        highVariableRootParameterBudget N split := by
  have hbound :=
    transformedParameterSet_card_le_reciprocal
      (X := N / 25 + 2) (Y := N / split)
      (modulus := modulus) (constant := constant)
      (height := rootFactor *
        2 ^ ((fiveMillionPivotSupport pivot).length + 1))
      (highVariableQuotientSurvivors split)
      (2 * split : Rat) hY hmodulus
      (fun m hm => highVariableQuotientSurvivors_pos hm)
      hroots
      (highVariableQuotientSurvivors_reciprocal_sum_le hSplit)
  rw [highVariableQuotientSurvivors_card] at hbound
  simpa [highVariableRootParameterBudget] using hbound

private theorem highVariableHighResidue_card_cast_le_of_rootFactor
    {N : Nat} {B : Finset Nat}
    {pivot baseResidue split rootFactor : Nat}
    (hSplit : 0 < split)
    (hYFive : 5 < N / split)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hNormal :
      ∀ m ∈ highVariableQuotientSurvivors split,
        ¬ 5 ∣ pivot * baseResidue + 1 →
        (transformedRootResidues m (25 * pivot)
          (pivot * baseResidue + 1)).card ≤
            rootFactor *
              2 ^ ((fiveMillionPivotSupport pivot).length + 1))
    (hTwist :
      ∀ m ∈ highVariableQuotientSurvivors split,
        5 ∣ pivot * baseResidue + 1 →
        ¬ 25 ∣ pivot * baseResidue + 1 →
        (transformedRootResidues m (5 * pivot)
          ((pivot * baseResidue + 1) / 5)).card ≤
            rootFactor *
              2 ^ ((fiveMillionPivotSupport pivot).length + 1)) :
    ((twoBaseHighTailSquarePointsAtResidue
        N pivot (N / split) baseResidue).card : Rat) ≤
      (rootFactor *
          2 ^ ((fiveMillionPivotSupport pivot).length + 1) : Nat) *
        highVariableRootParameterBudget N split := by
  classical
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  by_cases hEmpty :
      twoBaseHighTailSquarePointsAtResidue
        N pivot (N / split) baseResidue = ∅
  · rw [hEmpty]
    simp
    exact mul_nonneg (by positivity)
      (highVariableRootParameterBudget_nonneg
        (N := N) (split := split) (by omega))
  · obtain ⟨point, hpoint⟩ := Finset.nonempty_iff_ne_empty.mpr hEmpty
    have hpointParts := Finset.mem_filter.mp hpoint
    have hpointLow :
        point ∈ lowBaseSet N :=
      (Finset.mem_filter.mp hpointParts.1).1
    have hpointResidue : point % 25 = baseResidue :=
      hpointParts.2
    have hconstantTwentyFive :
        ¬ 25 ∣ pivot * baseResidue + 1 :=
      fiveMillionBaseConstant_not_twentyFive_dvd
        hBout hpivotResidual hpointLow hpointResidue
    by_cases hconstantFive : 5 ∣ pivot * baseResidue + 1
    · have hcard :
          (twoBaseHighTailSquarePointsAtResidue
              N pivot (N / split) baseResidue).card ≤
            (transformedParameterSet
              (N / 25 + 2) (N / split)
              (5 * pivot) ((pivot * baseResidue + 1) / 5)
              (highVariableQuotientSurvivors split)).card := by
        apply globalMixedHighResidue_card_le_restrictedParameterSet
        intro candidate hcandidate
        exact highVariableFiveTwistHighPoint_parameter_mem
          hSplit hYFive hBout hpivotResidual hcandidate
          hconstantFive hconstantTwentyFive
      have hcardQ :
          ((twoBaseHighTailSquarePointsAtResidue
              N pivot (N / split) baseResidue).card : Rat) ≤
            ((transformedParameterSet
              (N / 25 + 2) (N / split)
              (5 * pivot) ((pivot * baseResidue + 1) / 5)
              (highVariableQuotientSurvivors split)).card : Rat) := by
        exact_mod_cast hcard
      have hparameter :=
        highVariableParameterSet_card_cast_le_of_rootFactor
          (N := N) (pivot := pivot) (split := split)
          (modulus := 5 * pivot)
          (constant := (pivot * baseResidue + 1) / 5)
          hSplit (by omega)
          (fun m hm => hTwist m hm
            hconstantFive hconstantTwentyFive)
          (Nat.mul_pos (by norm_num) hpivotPos)
      exact hcardQ.trans hparameter
    · have hcard :
          (twoBaseHighTailSquarePointsAtResidue
              N pivot (N / split) baseResidue).card ≤
            (transformedParameterSet
              (N / 25 + 2) (N / split)
              (25 * pivot) (pivot * baseResidue + 1)
              (highVariableQuotientSurvivors split)).card := by
        apply globalMixedHighResidue_card_le_restrictedParameterSet
        intro candidate hcandidate
        exact highVariableNormalHighPoint_parameter_mem
          hSplit hYFive hBout hpivotResidual hcandidate hconstantFive
      have hcardQ :
          ((twoBaseHighTailSquarePointsAtResidue
              N pivot (N / split) baseResidue).card : Rat) ≤
            ((transformedParameterSet
              (N / 25 + 2) (N / split)
              (25 * pivot) (pivot * baseResidue + 1)
              (highVariableQuotientSurvivors split)).card : Rat) := by
        exact_mod_cast hcard
      have hparameter :=
        highVariableParameterSet_card_cast_le_of_rootFactor
          (N := N) (pivot := pivot) (split := split)
          (modulus := 25 * pivot)
          (constant := pivot * baseResidue + 1)
          hSplit (by omega)
          (fun m hm => hNormal m hm hconstantFive)
          (Nat.mul_pos (by norm_num) hpivotPos)
      exact hcardQ.trans hparameter

private theorem actualHighVariableHighPoints_card_cast_le_of_rootFactor
    {N : Nat} {B : Finset Nat} {pivot split : Nat}
    {rootFactor : Nat}
    (hLower : 5_000_000 ≤ N)
    (hSplit : 0 < split)
    (hYFive : 5 < N / split)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hNormal :
      ∀ baseResidue m,
        m ∈ highVariableQuotientSurvivors split →
        ¬ 5 ∣ pivot * baseResidue + 1 →
        (transformedRootResidues m (25 * pivot)
          (pivot * baseResidue + 1)).card ≤
            rootFactor *
              2 ^ ((fiveMillionPivotSupport pivot).length + 1))
    (hTwist :
      ∀ baseResidue m,
        m ∈ highVariableQuotientSurvivors split →
        5 ∣ pivot * baseResidue + 1 →
        ¬ 25 ∣ pivot * baseResidue + 1 →
        (transformedRootResidues m (5 * pivot)
          ((pivot * baseResidue + 1) / 5)).card ≤
            rootFactor *
              2 ^ ((fiveMillionPivotSupport pivot).length + 1)) :
    ((twoBaseHighTailSquarePoints
        N pivot (N / split)).card : Rat) ≤
      highVariableRootPointCeilingOf
        rootFactor N split := by
  have hcard :
      (twoBaseHighTailSquarePoints N pivot (N / split)).card ≤
        (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / split) 7).card +
        (twoBaseHighTailSquarePointsAtResidue
          N pivot (N / split) 18).card := by
    rw [twoBaseHighTailSquarePoints_eq_residue_union]
    exact Finset.card_union_le _ _
  have hcardQ :
      ((twoBaseHighTailSquarePoints
          N pivot (N / split)).card : Rat) ≤
        ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / split) 7).card : Rat) +
        ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / split) 18).card : Rat) := by
    exact_mod_cast hcard
  have hseven :=
    highVariableHighResidue_card_cast_le_of_rootFactor
      hSplit hYFive hBout hpivotResidual
      (fun m hm hfive => hNormal 7 m hm hfive)
      (fun m hm hfive htwentyFive =>
        hTwist 7 m hm hfive htwentyFive)
      (baseResidue := 7)
  have heighteen :=
    highVariableHighResidue_card_cast_le_of_rootFactor
      hSplit hYFive hBout hpivotResidual
      (fun m hm hfive => hNormal 18 m hm hfive)
      (fun m hm hfive htwentyFive =>
        hTwist 18 m hm hfive htwentyFive)
      (baseResidue := 18)
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotBounds :=
    Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)
  have hProduct :
      (fiveMillionPivotSupport pivot).prod ≤ N :=
    fiveMillionPivotSupport_prod_le hpivotBounds.1 hpivotBounds.2
  have hsharp :=
    two_pow_fiveMillionPivotSupport_cast_le_sharp hProduct
  have hbudgetNonneg :=
    highVariableRootParameterBudget_nonneg
      (N := N) (split := split) (by omega)
  unfold highVariableRootPointCeilingOf
  calc
    ((twoBaseHighTailSquarePoints
        N pivot (N / split)).card : Rat) ≤
        ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / split) 7).card : Rat) +
        ((twoBaseHighTailSquarePointsAtResidue
          N pivot (N / split) 18).card : Rat) := hcardQ
    _ ≤
        2 *
          ((rootFactor *
              2 ^ ((fiveMillionPivotSupport pivot).length + 1) : Nat) *
            highVariableRootParameterBudget N split) := by
      linarith
    _ =
        (4 * rootFactor) *
          (2 ^ (fiveMillionPivotSupport pivot).length : Nat) *
            highVariableRootParameterBudget N split := by
      rw [pow_succ]
      push_cast
      ring
    _ ≤
        (4 * rootFactor) * ((13 / 6 : Rat) *
          (Nat.sqrt (Nat.sqrt N) + 1)) *
            highVariableRootParameterBudget N split := by
      exact mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left hsharp (by positivity))
        hbudgetNonneg
    _ =
        ((26 * rootFactor : Nat) / 3 : Rat) *
          (Nat.sqrt (Nat.sqrt N) + 1) *
          highVariableRootParameterBudget N split := by
      push_cast
      ring

theorem actualHighVariableHighPoints_card_cast_le
    {N : Nat} {B : Finset Nat} {pivot split : Nat}
    (hLower : 5_000_000 ≤ N)
    (hSplit : 0 < split)
    (hYFive : 5 < N / split)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B) :
    ((twoBaseHighTailSquarePoints
        N pivot (N / split)).card : Rat) ≤
      highVariableRootPointCeiling N split := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  unfold highVariableRootPointCeiling
  apply actualHighVariableHighPoints_card_cast_le_of_rootFactor
    hLower hSplit hYFive hBout hpivotResidual
  · intro baseResidue m hm hfive
    exact globalMixedNormalTransformedRoot_card_le_anyParity
      hpivotPos hfive
  · intro baseResidue m hm hfive htwentyFive
    exact globalMixedFiveTwistTransformedRoot_card_le_anyParity
      hpivotPos hfive htwentyFive

theorem actualHighVariableHighPoints_card_cast_le_evenOne
    {N : Nat} {B : Finset Nat} {pivot split : Nat}
    (hLower : 5_000_000 ≤ N)
    (hSplit : 0 < split)
    (hYFive : 5 < N / split)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 4 = 2) :
    ((twoBaseHighTailSquarePoints
        N pivot (N / split)).card : Rat) ≤
      highVariableRootPointCeilingOf 1 N split := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  apply actualHighVariableHighPoints_card_cast_le_of_rootFactor
    hLower hSplit hYFive hBout hpivotResidual
  · intro baseResidue m hm hfive
    simpa using
      (globalMixedNormalTransformedRoot_card_le_evenOne
        (m := m) hpivotPos hpivotMod hfive)
  · intro baseResidue m hm hfive htwentyFive
    simpa using
      (globalMixedFiveTwistTransformedRoot_card_le_evenOne
        (m := m) hpivotPos hpivotMod hfive htwentyFive)

theorem actualHighVariableHighPoints_card_cast_le_evenTwo
    {N : Nat} {B : Finset Nat} {pivot split : Nat}
    (hLower : 5_000_000 ≤ N)
    (hSplit : 0 < split)
    (hYFive : 5 < N / split)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotMod : pivot % 8 = 4) :
    ((twoBaseHighTailSquarePoints
        N pivot (N / split)).card : Rat) ≤
      highVariableRootPointCeilingOf 2 N split := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  apply actualHighVariableHighPoints_card_cast_le_of_rootFactor
    hLower hSplit hYFive hBout hpivotResidual
  · intro baseResidue m hm hfive
    exact globalMixedNormalTransformedRoot_card_le_evenTwo
      hpivotPos hpivotMod hfive
  · intro baseResidue m hm hfive htwentyFive
    exact globalMixedFiveTwistTransformedRoot_card_le_evenTwo
      hpivotPos hpivotMod hfive htwentyFive

theorem actualHighVariableHighPoints_card_cast_le_odd
    {N : Nat} {B : Finset Nat} {pivot split : Nat}
    (hLower : 5_000_000 ≤ N)
    (hSplit : 0 < split)
    (hYFive : 5 < N / split)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot) :
    ((twoBaseHighTailSquarePoints
        N pivot (N / split)).card : Rat) ≤
      highVariableRootPointCeilingOf 1 N split := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotPos : 0 < pivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).1
  apply actualHighVariableHighPoints_card_cast_le_of_rootFactor
    hLower hSplit hYFive hBout hpivotResidual
  · intro baseResidue m hm hfive
    simpa using
      (fiveMillionNormalTransformedRoot_card_le
        (m := m) hpivotPos hpivotOdd hfive)
  · intro baseResidue m hm hfive htwentyFive
    simpa using
      (fiveMillionFiveTwistTransformedRoot_card_le
        (m := m) hpivotPos hpivotOdd hfive htwentyFive)

#print axioms actualHighVariableHighPoints_card_cast_le
#print axioms actualHighVariableHighPoints_card_cast_le_evenOne
#print axioms actualHighVariableHighPoints_card_cast_le_evenTwo
#print axioms actualHighVariableHighPoints_card_cast_le_odd

end Erdos848
