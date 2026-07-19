import Erdos848.TailGlobalMixedThreePivotJointHighLowParameter
import Erdos848.TailGlobalMixedRefinedRoot

namespace Erdos848

/-!
# Nonexceptional joint high-low bounds

For a retained low witness `q`, the expanded transformed constant is a unit
unless `q` divides the literal distance between the two pivots.  This closes
one actual normal high-low row directly through the refined root theorem.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem commonPrime_dvd_pivotDist
    {q x y point : ℕ}
    (hq : Nat.Prime q)
    (hxEvent : q ∣ x * point + 1)
    (hyEvent : q ^ 2 ∣ y * point + 1) :
    q ∣ Nat.dist x y := by
  have hqY : q ∣ y * point + 1 :=
    Nat.dvd_trans (dvd_pow_self q (by norm_num : 2 ≠ 0)) hyEvent
  have hqPoint : ¬ q ∣ point := by
    intro hdiv
    have hqProduct : q ∣ y * point := dvd_mul_of_dvd_right hdiv y
    have hqOne : q ∣ 1 := (Nat.dvd_add_right hqProduct).mp hqY
    exact hq.not_dvd_one hqOne
  have hcoprime : Nat.Coprime q point :=
    hq.coprime_iff_not_dvd.mpr hqPoint
  rcases le_total x y with hxy | hyx
  · rw [Nat.dist_eq_sub_of_le hxy]
    have hproduct : q ∣ (y - x) * point := by
      have hsub := Nat.dvd_sub hqY hxEvent
      simpa [Nat.sub_mul] using hsub
    exact hcoprime.dvd_of_dvd_mul_right hproduct
  · rw [Nat.dist_eq_sub_of_le_right hyx]
    have hproduct : q ∣ (x - y) * point := by
      have hsub := Nat.dvd_sub hxEvent hqY
      simpa [Nat.sub_mul] using hsub
    exact hcoprime.dvd_of_dvd_mul_right hproduct

private theorem prime_dvd_raw_of_dvd_adjustedConstant
    {q parameter offset modulus constant scale raw : ℕ}
    (hoffset : parameter % (q ^ 2) = offset)
    (hraw : raw = scale * (constant + modulus * parameter))
    (hadjusted : q ∣ constant + modulus * offset) :
    q ∣ raw := by
  have hparameterDecomp :
      parameter = offset + q ^ 2 * (parameter / (q ^ 2)) := by
    calc
      parameter = parameter % (q ^ 2) +
          q ^ 2 * (parameter / (q ^ 2)) :=
        (Nat.mod_add_div parameter (q ^ 2)).symm
      _ = offset + q ^ 2 * (parameter / (q ^ 2)) := by rw [hoffset]
  have hqSquare : q ∣ q ^ 2 :=
    dvd_pow_self q (by norm_num : 2 ≠ 0)
  have hqTail : q ∣
      (modulus * q ^ 2) * (parameter / (q ^ 2)) := by
    exact dvd_mul_of_dvd_left
      (dvd_mul_of_dvd_right hqSquare modulus) _
  have hform :
      constant + modulus * parameter =
        (constant + modulus * offset) +
          (modulus * q ^ 2) * (parameter / (q ^ 2)) := by
    conv_lhs => rw [hparameterDecomp]
    ring
  have hqForm : q ∣ constant + modulus * parameter := by
    rw [hform]
    exact Nat.dvd_add hadjusted hqTail
  rw [hraw]
  exact dvd_mul_of_dvd_right hqForm scale

private theorem adjustedConstant_coprime_expandedModulus
    {q modulus constant offset : ℕ}
    (hq : Nat.Prime q)
    (hbase : constant.Coprime modulus)
    (hqAdjusted : ¬ q ∣ constant + modulus * offset) :
    (constant + modulus * offset).Coprime (modulus * q ^ 2) := by
  have hmodEq :
      constant + modulus * offset ≡ constant [MOD modulus] := by
    exact ((Nat.modEq_add_modulus_mul_iff).mpr
      (Nat.ModEq.refl constant)).symm
  have hmodulus : (constant + modulus * offset).Coprime modulus := by
    rw [Nat.coprime_iff_gcd_eq_one, hmodEq.gcd_eq]
    exact hbase.gcd_eq_one
  have hqCoprime : q.Coprime (constant + modulus * offset) :=
    hq.coprime_iff_not_dvd.mpr hqAdjusted
  have hqSquare : (constant + modulus * offset).Coprime (q ^ 2) :=
    hqCoprime.symm.pow_right 2
  exact Nat.Coprime.mul_right hmodulus hqSquare

private theorem squareEventPoints_card_le_parameterSlice_at_anchor
    {q pivot baseResidue anchor : ℕ}
    (hq : Nat.Prime q) (hqFive : q ≠ 5)
    (points target : Finset ℕ) (hanchor : anchor ∈ points)
    (hresidue : ∀ point ∈ points, point % 25 = baseResidue)
    (hevent : ∀ point ∈ points, q ^ 2 ∣ pivot * point + 1)
    (htarget : ∀ point ∈ points, point / 25 ∈ target) :
    points.card ≤
      (target.filter fun parameter =>
        parameter % (q ^ 2) = (anchor / 25) % (q ^ 2)).card := by
  classical
  have hinjective : Set.InjOn (fun point : ℕ => point / 25) points := by
    intro a ha b hb hab
    change a / 25 = b / 25 at hab
    calc
      a = a % 25 + 25 * (a / 25) := (Nat.mod_add_div a 25).symm
      _ = baseResidue + 25 * (b / 25) := by
        rw [hresidue a ha, hab]
      _ = b % 25 + 25 * (b / 25) := by rw [hresidue b hb]
      _ = b := Nat.mod_add_div b 25
  have hsubset : points.image (fun point => point / 25) ⊆
      target.filter fun parameter =>
        parameter % (q ^ 2) = (anchor / 25) % (q ^ 2) := by
    intro parameter hparameter
    obtain ⟨point, hpoint, rfl⟩ := Finset.mem_image.mp hparameter
    apply Finset.mem_filter.mpr
    refine ⟨htarget point hpoint, ?_⟩
    have hmod := sameSquarePrimeEvent_parameter_modEq
      hq hqFive (hresidue point hpoint) (hresidue anchor hanchor)
        (hevent point hpoint) (hevent anchor hanchor)
    change (point / 25) % (q ^ 2) = (anchor / 25) % (q ^ 2) at hmod
    exact hmod
  calc
    points.card = (points.image fun point => point / 25).card :=
      (Finset.card_image_iff.mpr hinjective).symm
    _ ≤ _ := Finset.card_le_card hsubset

/-- Complete nonexceptional normal row for one retained low witness `q`.
The result counts the actual joint point set and gains the literal `q^2` in
the spacing denominator. -/
theorem globalMixedNormalJointHighLowResidue_card_le_of_not_dvd_dist
    {N : ℕ} {B : Finset ℕ}
    {highPivot lowPivot q baseResidue : ℕ} {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hhighResidual : highPivot ∈ hallResidual N B)
    (hq : Nat.Prime q) (hqLarge : 7 < q)
    (hqDist : ¬ q ∣ Nat.dist highPivot lowPivot)
    (hconstantFive : ¬ 5 ∣ highPivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (highPivot * baseResidue + 1) = true) :
    ((globalMixedJointHighLowPointsAtResidue
      N highPivot lowPivot q baseResidue).card : ℚ) ≤
      (4 * 2 ^ ((fiveMillionPivotSupport highPivot).length + 2) : ℕ) *
        (((globalMixedNormalSurvivorFinset
          (globalMixedActualMaskedSupport highPivot) squareCoset).card : ℚ) +
          2 * ((N / 25 + 2 : ℕ) : ℚ) /
            ((N / 55 : ℕ) * q ^ 2)) := by
  classical
  let points := globalMixedJointHighLowPointsAtResidue
    N highPivot lowPivot q baseResidue
  let survivors := globalMixedNormalSurvivorFinset
    (globalMixedActualMaskedSupport highPivot) squareCoset
  let target := transformedParameterSet (N / 25 + 2) (N / 55)
    (25 * highPivot) (highPivot * baseResidue + 1) survivors
  change (points.card : ℚ) ≤
    (4 * 2 ^ ((fiveMillionPivotSupport highPivot).length + 2) : ℕ) *
      ((survivors.card : ℚ) +
        2 * ((N / 25 + 2 : ℕ) : ℚ) / ((N / 55 : ℕ) * q ^ 2))
  have hhighCompletion : highPivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hhighResidual).1
  have hhighPos : 0 < highPivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hhighCompletion)).1
  have hY : 0 < N / 55 := by omega
  by_cases hempty : points = ∅
  · rw [hempty]
    simp only [Finset.card_empty, Nat.cast_zero]
    positivity
  · obtain ⟨anchor, hanchor⟩ := Finset.nonempty_iff_ne_empty.mpr hempty
    let offset := (anchor / 25) % (q ^ 2)
    have hanchorParts := Finset.mem_filter.mp hanchor
    have hanchorHigh := hanchorParts.1
    have hanchorResidue := (Finset.mem_filter.mp hanchorHigh).2
    have hanchorEvent := hanchorParts.2
    have hresidue : ∀ point ∈ points, point % 25 = baseResidue := by
      intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_filter.mp hpoint).1).2
    have hevent : ∀ point ∈ points,
        q ^ 2 ∣ lowPivot * point + 1 := by
      intro point hpoint
      exact (Finset.mem_filter.mp hpoint).2
    have htarget : ∀ point ∈ points, point / 25 ∈ target := by
      intro point hpoint
      exact globalMixedNormalHighPoint_parameter_mem
        hLower hBout hhighResidual (Finset.mem_filter.mp hpoint).1
          hconstantFive hcoset
    have hmapNat : points.card ≤
        (transformedParameterSetAtResidue
          (N / 25 + 2) (N / 55) (25 * highPivot)
          (highPivot * baseResidue + 1) survivors (q ^ 2) offset).card := by
      have hraw := squareEventPoints_card_le_parameterSlice_at_anchor
        hq (by omega : q ≠ 5) points target hanchor
          hresidue hevent htarget
      simpa [target, offset, transformedParameterSetAtResidue] using hraw
    have hpointDecomp :
        anchor = baseResidue + 25 * (anchor / 25) := by
      calc
        anchor = anchor % 25 + 25 * (anchor / 25) :=
          (Nat.mod_add_div anchor 25).symm
        _ = baseResidue + 25 * (anchor / 25) := by rw [hanchorResidue]
    have hrawEquation :
        highPivot * anchor + 1 =
          1 * ((highPivot * baseResidue + 1) +
            (25 * highPivot) * (anchor / 25)) := by
      conv_lhs => rw [hpointDecomp]
      ring
    have hqAdjusted : ¬ q ∣
        (highPivot * baseResidue + 1) + (25 * highPivot) * offset := by
      intro hdiv
      have hqRaw := prime_dvd_raw_of_dvd_adjustedConstant
        (show (anchor / 25) % (q ^ 2) = offset by rfl)
          hrawEquation hdiv
      exact hqDist (commonPrime_dvd_pivotDist hq hqRaw hanchorEvent)
    have hconstant :
        ((highPivot * baseResidue + 1) +
          (25 * highPivot) * offset).Coprime
            ((25 * highPivot) * q ^ 2) :=
      adjustedConstant_coprime_expandedModulus hq
        (fiveMillionNormalConstant_coprime hconstantFive) hqAdjusted
    have hslice := transformedParameterSetAtResidue_card_le
      (X := N / 25 + 2) (Y := N / 55)
      (modulus := 25 * highPivot)
      (constant := highPivot * baseResidue + 1)
      (boost := q ^ 2) (offset := offset)
      (height := 4 * 2 ^ ((fiveMillionPivotSupport highPivot).length + 2))
      survivors hY (by positivity) (pow_pos hq.pos 2)
      (by
        intro m hm
        exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1)
      (by
        intro m hm
        exact globalMixedFactorPivotPrimeSquareTransformedRoot_card_le
          (Or.inr rfl) hhighPos hq hconstant)
      (globalMixedNormalSurvivor_reciprocal_sum_le_four
        (globalMixedActualMaskedSupport highPivot) squareCoset)
    have hmapQ : (points.card : ℚ) ≤
        ((transformedParameterSetAtResidue
          (N / 25 + 2) (N / 55) (25 * highPivot)
          (highPivot * baseResidue + 1) survivors
          (q ^ 2) offset).card : ℚ) := by
      exact_mod_cast hmapNat
    exact hmapQ.trans hslice

/-- Complete nonexceptional five-twist row for one retained low witness `q`.
The raw linear form is five times the stored transformed equation, and the
same `q^2` spacing gain survives because `q > 7`. -/
theorem globalMixedFiveTwistJointHighLowResidue_card_le_of_not_dvd_dist
    {N : ℕ} {B : Finset ℕ}
    {highPivot lowPivot q baseResidue : ℕ} {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hhighResidual : highPivot ∈ hallResidual N B)
    (hq : Nat.Prime q) (hqLarge : 7 < q)
    (hqDist : ¬ q ∣ Nat.dist highPivot lowPivot)
    (hconstantFive : 5 ∣ highPivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ highPivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((highPivot * baseResidue + 1) / 5) = true) :
    ((globalMixedJointHighLowPointsAtResidue
      N highPivot lowPivot q baseResidue).card : ℚ) ≤
      (4 * 2 ^ ((fiveMillionPivotSupport highPivot).length + 2) : ℕ) *
        (((globalMixedTwistSurvivorFinset
          (globalMixedActualMaskedSupport highPivot) squareCoset).card : ℚ) +
          2 * ((N / 25 + 2 : ℕ) : ℚ) /
            ((N / 55 : ℕ) * q ^ 2)) := by
  classical
  let points := globalMixedJointHighLowPointsAtResidue
    N highPivot lowPivot q baseResidue
  let survivors := globalMixedTwistSurvivorFinset
    (globalMixedActualMaskedSupport highPivot) squareCoset
  let target := transformedParameterSet (N / 25 + 2) (N / 55)
    (5 * highPivot) ((highPivot * baseResidue + 1) / 5) survivors
  change (points.card : ℚ) ≤
    (4 * 2 ^ ((fiveMillionPivotSupport highPivot).length + 2) : ℕ) *
      ((survivors.card : ℚ) +
        2 * ((N / 25 + 2 : ℕ) : ℚ) / ((N / 55 : ℕ) * q ^ 2))
  have hhighCompletion : highPivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hhighResidual).1
  have hhighPos : 0 < highPivot :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hhighCompletion)).1
  have hY : 0 < N / 55 := by omega
  by_cases hempty : points = ∅
  · rw [hempty]
    simp only [Finset.card_empty, Nat.cast_zero]
    positivity
  · obtain ⟨anchor, hanchor⟩ := Finset.nonempty_iff_ne_empty.mpr hempty
    let offset := (anchor / 25) % (q ^ 2)
    have hanchorParts := Finset.mem_filter.mp hanchor
    have hanchorHigh := hanchorParts.1
    have hanchorResidue := (Finset.mem_filter.mp hanchorHigh).2
    have hanchorEvent := hanchorParts.2
    have hresidue : ∀ point ∈ points, point % 25 = baseResidue := by
      intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_filter.mp hpoint).1).2
    have hevent : ∀ point ∈ points,
        q ^ 2 ∣ lowPivot * point + 1 := by
      intro point hpoint
      exact (Finset.mem_filter.mp hpoint).2
    have htarget : ∀ point ∈ points, point / 25 ∈ target := by
      intro point hpoint
      exact globalMixedFiveTwistHighPoint_parameter_mem
        hLower hBout hhighResidual (Finset.mem_filter.mp hpoint).1
          hconstantFive hconstantTwentyFive hcoset
    have hmapNat : points.card ≤
        (transformedParameterSetAtResidue
          (N / 25 + 2) (N / 55) (5 * highPivot)
          ((highPivot * baseResidue + 1) / 5) survivors
          (q ^ 2) offset).card := by
      have hraw := squareEventPoints_card_le_parameterSlice_at_anchor
        hq (by omega : q ≠ 5) points target hanchor
          hresidue hevent htarget
      simpa [target, offset, transformedParameterSetAtResidue] using hraw
    have hpointDecomp :
        anchor = baseResidue + 25 * (anchor / 25) := by
      calc
        anchor = anchor % 25 + 25 * (anchor / 25) :=
          (Nat.mod_add_div anchor 25).symm
        _ = baseResidue + 25 * (anchor / 25) := by rw [hanchorResidue]
    have hconstantEq :
        5 * ((highPivot * baseResidue + 1) / 5) =
          highPivot * baseResidue + 1 :=
      Nat.mul_div_cancel' hconstantFive
    have hrawEquation :
        highPivot * anchor + 1 =
          5 * (((highPivot * baseResidue + 1) / 5) +
            (5 * highPivot) * (anchor / 25)) := by
      calc
        highPivot * anchor + 1 =
            (highPivot * baseResidue + 1) +
              25 * highPivot * (anchor / 25) := by
          conv_lhs => rw [hpointDecomp]
          ring
        _ = 5 * (((highPivot * baseResidue + 1) / 5) +
            (5 * highPivot) * (anchor / 25)) := by
          rw [mul_add, hconstantEq]
          ring
    have hqAdjusted : ¬ q ∣
        ((highPivot * baseResidue + 1) / 5) +
          (5 * highPivot) * offset := by
      intro hdiv
      have hqRaw := prime_dvd_raw_of_dvd_adjustedConstant
        (show (anchor / 25) % (q ^ 2) = offset by rfl)
          hrawEquation hdiv
      exact hqDist (commonPrime_dvd_pivotDist hq hqRaw hanchorEvent)
    have hconstant :
        (((highPivot * baseResidue + 1) / 5) +
          (5 * highPivot) * offset).Coprime
            ((5 * highPivot) * q ^ 2) :=
      adjustedConstant_coprime_expandedModulus hq
        (fiveMillionFiveTwistConstant_coprime
          hconstantFive hconstantTwentyFive) hqAdjusted
    have hslice := transformedParameterSetAtResidue_card_le
      (X := N / 25 + 2) (Y := N / 55)
      (modulus := 5 * highPivot)
      (constant := (highPivot * baseResidue + 1) / 5)
      (boost := q ^ 2) (offset := offset)
      (height := 4 * 2 ^ ((fiveMillionPivotSupport highPivot).length + 2))
      survivors hY (by positivity) (pow_pos hq.pos 2)
      (by
        intro m hm
        exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hm).1).1)
      (by
        intro m hm
        exact globalMixedFactorPivotPrimeSquareTransformedRoot_card_le
          (Or.inl rfl) hhighPos hq hconstant)
      (globalMixedTwistSurvivor_reciprocal_sum_le_four
        (globalMixedActualMaskedSupport highPivot) squareCoset)
    have hmapQ : (points.card : ℚ) ≤
        ((transformedParameterSetAtResidue
          (N / 25 + 2) (N / 55) (5 * highPivot)
          ((highPivot * baseResidue + 1) / 5) survivors
          (q ^ 2) offset).card : ℚ) := by
      exact_mod_cast hmapNat
    exact hmapQ.trans hslice

#print axioms globalMixedNormalJointHighLowResidue_card_le_of_not_dvd_dist
#print axioms globalMixedFiveTwistJointHighLowResidue_card_le_of_not_dvd_dist

end Erdos848
