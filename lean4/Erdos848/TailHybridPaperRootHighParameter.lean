import Erdos848.TailGlobalMixedEvenSurvivors
import Erdos848.TailHybridPaperActualSupport
import Erdos848.TailHybridPaperRootReciprocal

namespace Erdos848

/-! # Actual high-tail points in the hybrid paper survivor sets -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

lemma hybridPaperNormalHighPoint_parameter_mem
    (normalProvider : HybridPaperRootCertificateProvider)
    {N : Nat} {B : Finset Nat} {pivot point baseResidue : Nat}
    {regime : HybridPaperDiagonalRegime} {squareCoset : Bool}
    (hLower : 200_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpoint : point ∈
      twoBaseHighTailSquarePointsAtResidue
        N pivot (N / regime.rootSplit) baseResidue)
    (hconstantFive : ¬ 5 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      (pivot * baseResidue + 1) = true) :
    point / 25 ∈
      transformedParameterSet
        (N / 25 + 2) (N / regime.rootSplit) (25 * pivot)
        (pivot * baseResidue + 1)
        (hybridPaperRootSurvivorFinset
          regime.rootLookup regime squareCoset
          (fiveMillionPivotSupport pivot).dropLast) := by
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
    hybridPaperHighTailSquarePoint_has_bounded_quotient
      regime hpivotUpper hpointHigh
  have hYLarge : 5 < N / regime.rootSplit := by
    cases regime <;>
      norm_num [HybridPaperDiagonalRegime.rootSplit] at * <;> omega
  have hpFive : ¬ 5 ∣ p := by
    intro hpDvd
    have hpEq : 5 = p :=
      (Nat.prime_dvd_prime_iff_eq (by norm_num) hpPrime).mp hpDvd
    omega
  have hpointDecomp : point = baseResidue + 25 * (point / 25) := by
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
  have hmFive : ¬ 5 ∣ m := by
    intro hmDvd
    have hleft : 5 ∣ p ^ 2 * m := dvd_mul_of_dvd_right hmDvd _
    rw [htransformed] at hleft
    have htail : 5 ∣ (25 * pivot) * (point / 25) := by
      refine ⟨5 * pivot * (point / 25), ?_⟩
      ring
    exact hconstantFive ((Nat.dvd_add_iff_left htail).mpr hleft)
  have hequationMod :
      p ^ 2 * m % 5 = (pivot * baseResidue + 1) % 5 := by
    have hmod := congrArg (fun value : Nat => value % 5) htransformed
    simpa [Nat.add_mod, Nat.mul_mod] using hmod
  have hmCoset : modFiveCosetAccepts squareCoset m = true :=
    modFiveCosetAccepts_of_square_scaled
      hpFive hequationMod hcoset
  have hmSurvivor :
      m ∈ hybridPaperRootSurvivorFinset
        regime.rootLookup regime squareCoset
        (fiveMillionPivotSupport pivot).dropLast := by
    apply mem_hybridPaperNormalRootSurvivorFinset_of_conditions
      normalProvider
      hmLower hmUpper hmCoset
    · intro q hq
      exact fiveMillionPivotSupport_primes pivot q
        (List.mem_of_mem_dropLast hq)
    · intro q hq
      have hqSupport : q ∈ fiveMillionPivotSupport pivot :=
        List.mem_of_mem_dropLast hq
      exact quotient_modEq_square_of_prime_dvd_pivot
        (fiveMillionPivotSupport_primes pivot q hqSupport).1
        (fiveMillionPivotSupport_dvd hqSupport) hequation
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

lemma hybridPaperFiveTwistHighPoint_parameter_mem
    (provider : HybridPaperTwistCertificateProvider)
    (normalProvider : HybridPaperRootCertificateProvider)
    {N : Nat} {B : Finset Nat} {pivot point baseResidue : Nat}
    {regime : HybridPaperDiagonalRegime} {squareCoset : Bool}
    (hLower : 200_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpoint : point ∈
      twoBaseHighTailSquarePointsAtResidue
        N pivot (N / regime.rootSplit) baseResidue)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬ 25 ∣ pivot * baseResidue + 1)
    (hcoset : modFiveCosetAccepts squareCoset
      ((pivot * baseResidue + 1) / 5) = true)
    (hpTable :
      ∀ q ∈ (fiveMillionPivotSupport pivot).dropLast,
        q ∈ Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes) :
    point / 25 ∈
      transformedParameterSet
        (N / 25 + 2) (N / regime.rootSplit) (5 * pivot)
        ((pivot * baseResidue + 1) / 5)
        (hybridPaperRootSurvivorFinset
          (provider.lookup regime) regime squareCoset
          (fiveMillionPivotSupport pivot).dropLast) := by
  classical
  have hpointParts := Finset.mem_filter.mp hpoint
  have hpointHigh := hpointParts.1
  have hpointResidue := hpointParts.2
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotUpper : pivot ≤ N :=
    (Finset.mem_Icc.mp
      (hallCompletion_subset_Icc hBout hpivotCompletion)).2
  obtain ⟨p, raw, hpPrime, hpLarge, hequation, hmLower, hmUpper⟩ :=
    hybridPaperHighTailSquarePoint_has_bounded_quotient
      regime hpivotUpper hpointHigh
  have hYLarge : 5 < N / regime.rootSplit := by
    cases regime <;>
      norm_num [HybridPaperDiagonalRegime.rootSplit] at * <;> omega
  have hpFive : ¬ 5 ∣ p := by
    intro hpDvd
    have hpEq : 5 = p :=
      (Nat.prime_dvd_prime_iff_eq (by norm_num) hpPrime).mp hpDvd
    omega
  have hpointDecomp : point = baseResidue + 25 * (point / 25) := by
    calc
      point = point % 25 + 25 * (point / 25) :=
        (Nat.mod_add_div point 25).symm
      _ = baseResidue + 25 * (point / 25) := by
        rw [hpointResidue]
  have hrawTransformed :
      p ^ 2 * raw =
        (pivot * baseResidue + 1) +
          (25 * pivot) * (point / 25) := by
    calc
      p ^ 2 * raw = pivot * point + 1 := hequation
      _ = (pivot * baseResidue + 1) +
          (25 * pivot) * (point / 25) := by
        conv_lhs => rw [hpointDecomp]
        ring
  have hrawFive : 5 ∣ raw := by
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
    · exact False.elim (hpFive
        ((show Nat.Prime 5 by norm_num).dvd_of_dvd_pow hpSquare))
    · exact hm
  let stored := raw / 5
  have hmEq : 5 * stored = raw := Nat.mul_div_cancel' hrawFive
  have hmStoredLower : 1 ≤ stored := by
    have hmFiveLe : 5 ≤ raw := Nat.le_of_dvd (by omega) hrawFive
    exact (Nat.le_div_iff_mul_le (by norm_num : 0 < 5)).mpr (by omega)
  have hmStoredUpper : stored ≤ regime.rootBound :=
    (Nat.div_le_self raw 5).trans hmUpper
  have hconstantEq :
      5 * ((pivot * baseResidue + 1) / 5) =
        pivot * baseResidue + 1 :=
    Nat.mul_div_cancel' hconstantFive
  have htransformed :
      p ^ 2 * stored =
        (pivot * baseResidue + 1) / 5 +
          (5 * pivot) * (point / 25) := by
    apply Nat.mul_left_cancel (by norm_num : 0 < 5)
    calc
      5 * (p ^ 2 * stored) = p ^ 2 * (5 * stored) := by ring
      _ = p ^ 2 * raw := by rw [hmEq]
      _ = (pivot * baseResidue + 1) +
          (25 * pivot) * (point / 25) := hrawTransformed
      _ = 5 * ((pivot * baseResidue + 1) / 5 +
          (5 * pivot) * (point / 25)) := by
        rw [mul_add, hconstantEq]
        ring
  have hequationMod :
      p ^ 2 * stored % 5 =
        ((pivot * baseResidue + 1) / 5) % 5 := by
    have hmod := congrArg (fun value : Nat => value % 5) htransformed
    simpa [Nat.add_mod, Nat.mul_mod] using hmod
  have hmStoredFive : ¬ 5 ∣ stored := by
    intro hfive
    have hleft : 25 ∣ 5 * stored := by
      obtain ⟨value, hvalue⟩ := hfive
      refine ⟨value, ?_⟩
      omega
    rw [hmEq] at hleft
    have hrawTwentyFive : 25 ∣ p ^ 2 * raw :=
      dvd_mul_of_dvd_right hleft _
    rw [hrawTransformed] at hrawTwentyFive
    have htail : 25 ∣ (25 * pivot) * (point / 25) := by
      refine ⟨pivot * (point / 25), ?_⟩
      ring
    exact hconstantTwentyFive
      ((Nat.dvd_add_iff_left htail).mpr hrawTwentyFive)
  have hmCoset : modFiveCosetAccepts squareCoset stored = true :=
    modFiveCosetAccepts_of_square_scaled
      hpFive hequationMod hcoset
  have hmSurvivor :
      stored ∈ hybridPaperRootSurvivorFinset
        (provider.lookup regime) regime squareCoset
        (fiveMillionPivotSupport pivot).dropLast := by
    apply mem_hybridPaperTwistRootSurvivorFinset_of_conditions
      provider normalProvider
      hmStoredLower hmStoredUpper hmCoset hpTable
    intro q hq
    have hqSupport : q ∈ fiveMillionPivotSupport pivot :=
      List.mem_of_mem_dropLast hq
    have hsquare :=
      quotient_modEq_square_of_prime_dvd_pivot
        (fiveMillionPivotSupport_primes pivot q hqSupport).1
        (fiveMillionPivotSupport_dvd hqSupport) hequation
    simpa [hmEq] using hsquare
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
  refine ⟨stored, hmSurvivor, p, ?_, hpLarge, htransformed⟩
  apply Finset.mem_range.mpr
  have hpSquare : p < p ^ 2 := by
    nlinarith [hpPrime.two_le]
  have hpProduct : p < p ^ 2 * stored := by
    exact hpSquare.trans_le (by
      simpa using Nat.mul_le_mul_left (p ^ 2) hmStoredLower)
  have hparameterLe :
      (pivot * baseResidue + 1) / 5 +
          (5 * pivot) * (point / 25) ≤
        (pivot * baseResidue + 1) / 5 +
          (5 * pivot) * (N / 25 + 2) := by
    gcongr
  rw [htransformed] at hpProduct
  omega

#print axioms hybridPaperNormalHighPoint_parameter_mem
#print axioms hybridPaperFiveTwistHighPoint_parameter_mem

end Erdos848
