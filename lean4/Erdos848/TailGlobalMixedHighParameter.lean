import Erdos848.TailGlobalMixedActualSurvivors
import Erdos848.TailFiveMillionHighTransformedCore

namespace Erdos848

/-!
# Global high-tail points as transformed parameters

The archived transformed-parameter argument was restricted to
`5,000,000 ≤ N < 10,000,000` and `Y = N / 49`.  Here the same literal map is
proved for every `N ≥ 5,000,000` at the fixed global split `Y = N / 55`, using
the new `3025/605` survivor sets.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

lemma globalMixedNormalHighPoint_parameter_mem
    {N : ℕ} {B : Finset ℕ} {pivot point baseResidue : ℕ}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpoint : point ∈
      twoBaseHighTailSquarePointsAtResidue N pivot (N / 55) baseResidue)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    point / 25 ∈
      transformedParameterSet (N / 25 + 2) (N / 55) (25 * pivot)
        (pivot * baseResidue + 1)
        (globalMixedNormalSurvivorFinset
          (globalMixedActualMaskedSupport pivot) squareCoset) := by
  classical
  have hpointParts := Finset.mem_filter.mp hpoint
  have hpointHigh := hpointParts.1
  have hpointResidue := hpointParts.2
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotUpper : pivot ≤ N :=
    (Finset.mem_Icc.mp (hallCompletion_subset_Icc hBout hpivotCompletion)).2
  obtain ⟨p, m, hpPrime, hpLarge, hequation, hmLower, hmUpper⟩ :=
    globalMixedHighTailSquarePoint_has_bounded_quotient hpivotUpper hpointHigh
  have hpFive : ¬ 5 ∣ p := by
    intro hpDvd
    have hpEq : 5 = p :=
      (Nat.prime_dvd_prime_iff_eq (by norm_num) hpPrime).mp hpDvd
    have hYLarge : 5 < N / 55 := by omega
    omega
  have hpointDecomp : point = baseResidue + 25 * (point / 25) := by
    calc
      point = point % 25 + 25 * (point / 25) :=
        (Nat.mod_add_div point 25).symm
      _ = baseResidue + 25 * (point / 25) := by rw [hpointResidue]
  have htransformed :
      p ^ 2 * m =
        (pivot * baseResidue + 1) + (25 * pivot) * (point / 25) := by
    calc
      p ^ 2 * m = pivot * point + 1 := hequation
      _ = (pivot * baseResidue + 1) +
          (25 * pivot) * (point / 25) := by
        conv_lhs => rw [hpointDecomp]
        ring
  have hmFive : ¬ 5 ∣ m := by
    intro hmDvd
    have hleft : 5 ∣ p ^ 2 * m := dvd_mul_of_dvd_right hmDvd _
    rw [htransformed] at hleft
    have htail : 5 ∣ (25 * pivot) * (point / 25) := by
      refine ⟨5 * pivot * (point / 25), ?_⟩
      ring
    exact hconstantFive ((Nat.dvd_add_iff_left htail).mpr hleft)
  have hequationMod : p ^ 2 * m % 5 =
      (pivot * baseResidue + 1) % 5 := by
    have hmod := congrArg (fun value : ℕ => value % 5) htransformed
    simpa [Nat.add_mod, Nat.mul_mod] using hmod
  have hmCoset : modFiveCosetAccepts squareCoset m = true :=
    modFiveCosetAccepts_of_square_scaled hpFive hequationMod hcoset
  have hmSurvivor : m ∈
      globalMixedNormalSurvivorFinset
        (globalMixedActualMaskedSupport pivot) squareCoset :=
    globalMixedRawQuotient_normal_mem hmLower hmUpper hequation hmCoset
  have hpointLe : point ≤ N :=
    (Finset.mem_Icc.mp
      (lowBaseSet_subset_Icc N (Finset.mem_filter.mp hpointHigh).1)).2
  have htRange : point / 25 < N / 25 + 2 := by
    have hdivLe : point / 25 ≤ N / 25 := Nat.div_le_div_right hpointLe
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
      (pivot * baseResidue + 1) + (25 * pivot) * (point / 25) ≤
        (pivot * baseResidue + 1) + (25 * pivot) * (N / 25 + 2) := by
    gcongr
  rw [htransformed] at hpProduct
  omega

theorem globalMixedNormalHighResidue_card_le_parameterSet
    {N : ℕ} {B : Finset ℕ} {pivot baseResidue : ℕ}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    (twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card ≤
      (transformedParameterSet (N / 25 + 2) (N / 55) (25 * pivot)
        (pivot * baseResidue + 1)
        (globalMixedNormalSurvivorFinset
          (globalMixedActualMaskedSupport pivot) squareCoset)).card := by
  classical
  let points := twoBaseHighTailSquarePointsAtResidue
    N pivot (N / 55) baseResidue
  let target := transformedParameterSet (N / 25 + 2) (N / 55)
    (25 * pivot) (pivot * baseResidue + 1)
    (globalMixedNormalSurvivorFinset
      (globalMixedActualMaskedSupport pivot) squareCoset)
  have hresidue : ∀ point ∈ points, point % 25 = baseResidue := by
    intro point hpoint
    exact (Finset.mem_filter.mp hpoint).2
  have hinjective : Set.InjOn (fun point : ℕ => point / 25) points :=
    point_div_twentyFive_injective_on_residue hresidue
  have hsubset : points.image (fun point => point / 25) ⊆ target := by
    intro parameter hparameter
    obtain ⟨point, hpoint, rfl⟩ := Finset.mem_image.mp hparameter
    exact globalMixedNormalHighPoint_parameter_mem
      hLower hBout hpivotResidual hpoint hconstantFive hcoset
  calc
    points.card = (points.image (fun point => point / 25)).card :=
      (Finset.card_image_iff.mpr hinjective).symm
    _ ≤ target.card := Finset.card_le_card hsubset

lemma globalMixedFiveTwistHighPoint_parameter_mem
    {N : ℕ} {B : Finset ℕ} {pivot point baseResidue : ℕ}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpoint : point ∈
      twoBaseHighTailSquarePointsAtResidue N pivot (N / 55) baseResidue)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    point / 25 ∈
      transformedParameterSet (N / 25 + 2) (N / 55) (5 * pivot)
        ((pivot * baseResidue + 1) / 5)
        (globalMixedTwistSurvivorFinset
          (globalMixedActualMaskedSupport pivot) squareCoset) := by
  classical
  have hpointParts := Finset.mem_filter.mp hpoint
  have hpointHigh := hpointParts.1
  have hpointResidue := hpointParts.2
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotUpper : pivot ≤ N :=
    (Finset.mem_Icc.mp (hallCompletion_subset_Icc hBout hpivotCompletion)).2
  obtain ⟨p, m, hpPrime, hpLarge, hequation, hmLower, hmUpper⟩ :=
    globalMixedHighTailSquarePoint_has_bounded_quotient hpivotUpper hpointHigh
  have hpFive : ¬ 5 ∣ p := by
    intro hpDvd
    have hpEq : 5 = p :=
      (Nat.prime_dvd_prime_iff_eq (by norm_num) hpPrime).mp hpDvd
    have hYLarge : 5 < N / 55 := by omega
    omega
  have hpointDecomp : point = baseResidue + 25 * (point / 25) := by
    calc
      point = point % 25 + 25 * (point / 25) :=
        (Nat.mod_add_div point 25).symm
      _ = baseResidue + 25 * (point / 25) := by rw [hpointResidue]
  have hrawTransformed :
      p ^ 2 * m =
        (pivot * baseResidue + 1) + (25 * pivot) * (point / 25) := by
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
    have hright : 5 ∣
        (pivot * baseResidue + 1) + (25 * pivot) * (point / 25) :=
      Nat.dvd_add hconstantFive htail
    rw [← hrawTransformed] at hright
    rcases (show Nat.Prime 5 by norm_num).dvd_mul.mp hright with hpSquare | hm
    · exact False.elim (hpFive
        ((show Nat.Prime 5 by norm_num).dvd_of_dvd_pow hpSquare))
    · exact hm
  have hmEq : 5 * (m / 5) = m := Nat.mul_div_cancel' hmFive
  have hmDivLower : 1 ≤ m / 5 := by
    have hmFiveLe : 5 ≤ m := Nat.le_of_dvd (by omega) hmFive
    exact (Nat.le_div_iff_mul_le (by norm_num : 0 < 5)).mpr (by omega)
  have hmDivUpper : m / 5 ≤ globalMixedTwistBound := by
    dsimp [globalMixedNormalBound] at hmUpper
    dsimp [globalMixedTwistBound]
    omega
  have hconstantEq :
      5 * ((pivot * baseResidue + 1) / 5) =
        pivot * baseResidue + 1 := Nat.mul_div_cancel' hconstantFive
  have htransformed :
      p ^ 2 * (m / 5) =
        (pivot * baseResidue + 1) / 5 +
          (5 * pivot) * (point / 25) := by
    apply Nat.mul_left_cancel (by norm_num : 0 < 5)
    calc
      5 * (p ^ 2 * (m / 5)) = p ^ 2 * (5 * (m / 5)) := by ring
      _ = p ^ 2 * m := by rw [hmEq]
      _ = (pivot * baseResidue + 1) +
          (25 * pivot) * (point / 25) := hrawTransformed
      _ = 5 * ((pivot * baseResidue + 1) / 5 +
          (5 * pivot) * (point / 25)) := by
        rw [mul_add, hconstantEq]
        ring
  have hequationMod : p ^ 2 * (m / 5) % 5 =
      ((pivot * baseResidue + 1) / 5) % 5 := by
    have hmod := congrArg (fun value : ℕ => value % 5) htransformed
    simpa [Nat.add_mod, Nat.mul_mod] using hmod
  have hmCoset : modFiveCosetAccepts squareCoset (m / 5) = true :=
    modFiveCosetAccepts_of_square_scaled hpFive hequationMod hcoset
  have hrawStored :
      p ^ 2 * (5 * (m / 5)) = pivot * point + 1 := by
    rw [hmEq]
    exact hequation
  have hmSurvivor : m / 5 ∈
      globalMixedTwistSurvivorFinset
        (globalMixedActualMaskedSupport pivot) squareCoset :=
    globalMixedRawQuotient_twist_mem
      hmDivLower hmDivUpper hrawStored hmCoset
  have hpointLe : point ≤ N :=
    (Finset.mem_Icc.mp
      (lowBaseSet_subset_Icc N (Finset.mem_filter.mp hpointHigh).1)).2
  have htRange : point / 25 < N / 25 + 2 := by
    have hdivLe : point / 25 ≤ N / 25 := Nat.div_le_div_right hpointLe
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

theorem globalMixedFiveTwistHighResidue_card_le_parameterSet
    {N : ℕ} {B : Finset ℕ} {pivot baseResidue : ℕ}
    {squareCoset : Bool}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true) :
    (twoBaseHighTailSquarePointsAtResidue
        N pivot (N / 55) baseResidue).card ≤
      (transformedParameterSet (N / 25 + 2) (N / 55) (5 * pivot)
        ((pivot * baseResidue + 1) / 5)
        (globalMixedTwistSurvivorFinset
          (globalMixedActualMaskedSupport pivot) squareCoset)).card := by
  classical
  let points := twoBaseHighTailSquarePointsAtResidue
    N pivot (N / 55) baseResidue
  let target := transformedParameterSet (N / 25 + 2) (N / 55)
    (5 * pivot) ((pivot * baseResidue + 1) / 5)
    (globalMixedTwistSurvivorFinset
      (globalMixedActualMaskedSupport pivot) squareCoset)
  have hresidue : ∀ point ∈ points, point % 25 = baseResidue := by
    intro point hpoint
    exact (Finset.mem_filter.mp hpoint).2
  have hinjective : Set.InjOn (fun point : ℕ => point / 25) points :=
    point_div_twentyFive_injective_on_residue hresidue
  have hsubset : points.image (fun point => point / 25) ⊆ target := by
    intro parameter hparameter
    obtain ⟨point, hpoint, rfl⟩ := Finset.mem_image.mp hparameter
    exact globalMixedFiveTwistHighPoint_parameter_mem
      hLower hBout hpivotResidual hpoint hconstantFive
        hconstantTwentyFive hcoset
  calc
    points.card = (points.image (fun point => point / 25)).card :=
      (Finset.card_image_iff.mpr hinjective).symm
    _ ≤ target.card := Finset.card_le_card hsubset

#print axioms globalMixedNormalHighPoint_parameter_mem
#print axioms globalMixedNormalHighResidue_card_le_parameterSet
#print axioms globalMixedFiveTwistHighPoint_parameter_mem
#print axioms globalMixedFiveTwistHighResidue_card_le_parameterSet

end Erdos848
