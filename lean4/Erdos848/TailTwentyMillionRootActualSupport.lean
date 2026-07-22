import Erdos848.TailGlobalMixedActualSurvivors
import Erdos848.TailTwentyMillionRootSupportComplete

namespace Erdos848

/-!
# Actual support and quotient bounds for the twenty-million root rows

The generated table only covers support lengths at most seven and quotient
words of length `row.split ^ 2`.  This file proves that those two finite
domains contain every actual pivot and every actual high-tail quotient in
`20,000,000 ≤ N < 40,000,000`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem mixedSupport_length_le_seven_of_prod_lt_fortyMillion
    (support : List Nat)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod < 40_000_000) :
    support.length ≤ 7 := by
  by_contra hLength
  have hEight : 8 ≤ support.length := by omega
  obtain ⟨p₀, p₁, p₂, p₃, p₄, p₅, p₆, p₇, rest, rfl⟩ :
      ∃ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ rest,
        support = p₀ :: p₁ :: p₂ :: p₃ :: p₄ :: p₅ :: p₆ :: p₇ :: rest := by
    match support with
    | p₀ :: p₁ :: p₂ :: p₃ :: p₄ :: p₅ :: p₆ :: p₇ :: rest =>
        exact ⟨p₀, p₁, p₂, p₃, p₄, p₅, p₆, p₇, rest, rfl⟩
    | [] | [_] | [_, _] | [_, _, _] | [_, _, _, _] |
      [_, _, _, _, _] | [_, _, _, _, _, _] |
      [_, _, _, _, _, _, _] =>
        simp at hEight
  have hp₀ := hPrimes p₀ (by simp)
  have hp₁ := hPrimes p₁ (by simp)
  have hp₂ := hPrimes p₂ (by simp)
  have hp₃ := hPrimes p₃ (by simp)
  have hp₄ := hPrimes p₄ (by simp)
  have hp₅ := hPrimes p₅ (by simp)
  have hp₆ := hPrimes p₆ (by simp)
  have hp₇ := hPrimes p₇ (by simp)
  simp only [List.pairwise_cons] at hIncreasing
  have h₀₁ : p₀ < p₁ := hIncreasing.1 p₁ (by simp)
  have h₁₂ : p₁ < p₂ := hIncreasing.2.1 p₂ (by simp)
  have h₂₃ : p₂ < p₃ := hIncreasing.2.2.1 p₃ (by simp)
  have h₃₄ : p₃ < p₄ := hIncreasing.2.2.2.1 p₄ (by simp)
  have h₄₅ : p₄ < p₅ := hIncreasing.2.2.2.2.1 p₅ (by simp)
  have h₅₆ : p₅ < p₆ := hIncreasing.2.2.2.2.2.1 p₆ (by simp)
  have h₆₇ : p₆ < p₇ := hIncreasing.2.2.2.2.2.2.1 p₇ (by simp)
  have hp₀Lower : 3 ≤ p₀ := by
    have hpTwo := hp₀.1.two_le
    have hpNotTwo : p₀ ≠ 2 := by
      intro h
      subst p₀
      norm_num [FiveMillionSupportPrime] at hp₀
    omega
  have hp₁Lower : 7 ≤ p₁ := by
    by_contra h
    interval_cases p₁ <;>
      norm_num [FiveMillionSupportPrime] at hp₁ <;> omega
  have hp₂Lower : 11 ≤ p₂ := by
    by_contra h
    interval_cases p₂ <;>
      norm_num [FiveMillionSupportPrime] at hp₂ <;> omega
  have hp₃Lower : 13 ≤ p₃ := by
    by_contra h
    interval_cases p₃ <;>
      norm_num [FiveMillionSupportPrime] at hp₃ <;> omega
  have hp₄Lower : 17 ≤ p₄ := by
    by_contra h
    interval_cases p₄ <;>
      norm_num [FiveMillionSupportPrime] at hp₄ <;> omega
  have hp₅Lower : 19 ≤ p₅ := by
    by_contra h
    interval_cases p₅ <;>
      norm_num [FiveMillionSupportPrime] at hp₅ <;> omega
  have hp₆Lower : 23 ≤ p₆ := by
    by_contra h
    interval_cases p₆ <;>
      norm_num [FiveMillionSupportPrime] at hp₆ <;> omega
  have hp₇Lower : 29 ≤ p₇ := by
    by_contra h
    interval_cases p₇ <;>
      norm_num [FiveMillionSupportPrime] at hp₇ <;> omega
  have hPrefix :
      646_969_323 ≤ p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ := by
    calc
      646_969_323 = 3 * 7 * 11 * 13 * 17 * 19 * 23 * 29 := by norm_num
      _ ≤ p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ := by gcongr
  have hRestPositive : 0 < rest.prod := List.prod_pos fun p hp =>
    (hPrimes p (by simp [hp])).1.pos
  have hFull :
      646_969_323 ≤
        p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ * rest.prod := by
    calc
      646_969_323 ≤ p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ := hPrefix
      _ = p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ * 1 := by simp
      _ ≤ p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ * rest.prod := by
        exact Nat.mul_le_mul_left _
          (show 1 ≤ rest.prod from hRestPositive)
  have hProduct' :
      p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ * rest.prod <
        40_000_000 := by
    simpa only [List.prod_cons, Nat.mul_assoc] using hProduct
  omega

theorem actualTwentyMillionPivotSupport_length_le_seven
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hUpper : N < 40_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B) :
    (fiveMillionPivotSupport pivot).length ≤ 7 := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotBounds := hallCompletion_subset_Icc hBout hpivotCompletion
  apply mixedSupport_length_le_seven_of_prod_lt_fortyMillion
  · exact fiveMillionPivotSupport_primes pivot
  · exact fiveMillionPivotSupport_increasing pivot
  · exact (fiveMillionPivotSupport_prod_le
      (Finset.mem_Icc.mp hpivotBounds).1
      (Finset.mem_Icc.mp hpivotBounds).2).trans_lt hUpper

theorem actualTwentyMillionSupport_dropLast_lt_normalMaskBound
    {k : Nat} (hk : k ≤ 7) (support : List Nat)
    (hLength : support.length = k)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod < 40_000_000) :
    ∀ p ∈ support.dropLast, p < twentyMillionRootNormalMaskBound := by
  intro p hp
  have hDropNonempty : support.dropLast ≠ [] :=
    List.ne_nil_of_mem hp
  have hkTwo : 2 ≤ k := by
    have hDropLength : 0 < support.dropLast.length := by
      cases hdrop : support.dropLast with
      | nil => exact (hDropNonempty hdrop).elim
      | cons _ _ => simp
    simp [List.length_dropLast, hLength] at hDropLength
    omega
  have hThreshold :
      40_000_000 ≤ globalMixedSupportProductThreshold k := by
    interval_cases k <;>
      norm_num [globalMixedSupportProductThreshold] at *
  have hFinite :
      support.prod < globalMixedSupportProductThreshold k :=
    hProduct.trans_le hThreshold
  simpa [twentyMillionRootNormalMaskBound] using
    mixedSupport_dropLast_lt_9161
      (by omega) support hLength hPrimes hIncreasing hFinite p hp

/-- The row-specific split gives an exact quotient bound
`m ≤ row.split ^ 2`; no fixed `3025` cutoff is assumed. -/
theorem twentyMillionHighTailSquarePoint_has_bounded_quotient
    {N pivot point : Nat} (row : TwentyMillionRootRow)
    (hpivot : pivot ≤ N)
    (hpoint :
      point ∈ twoBaseHighTailSquarePoints N pivot (N / row.split)) :
    ∃ p m : Nat,
      Nat.Prime p ∧ N / row.split < p ∧
      p ^ 2 * m = pivot * point + 1 ∧
      1 ≤ m ∧ m ≤ row.bound := by
  classical
  have hparts := Finset.mem_filter.mp hpoint
  have hpointLe : point ≤ N :=
    (Finset.mem_Icc.mp (lowBaseSet_subset_Icc N hparts.1)).2
  obtain ⟨p, hpPrime, hpLarge, hpDiv⟩ := hparts.2
  obtain ⟨m, hm⟩ := hpDiv
  have hsplit : 0 < row.split := by
    cases row <;> norm_num [TwentyMillionRootRow.split]
  have hNp : N < p * row.split :=
    (Nat.div_lt_iff_lt_mul hsplit).mp hpLarge
  have hNsq : N * N < (p * row.split) * (p * row.split) := by
    nlinarith
  have hNsq' : N ^ 2 + 1 ≤ row.bound * p ^ 2 := by
    dsimp [TwentyMillionRootRow.bound]
    nlinarith
  have hproduct : pivot * point ≤ N * N :=
    Nat.mul_le_mul hpivot hpointLe
  have hnumerator : pivot * point + 1 ≤ row.bound * p ^ 2 := by
    calc
      pivot * point + 1 ≤ N ^ 2 + 1 := by
        simpa [pow_two] using Nat.add_le_add_right hproduct 1
      _ ≤ row.bound * p ^ 2 := hNsq'
  have hmPos : 1 ≤ m := by
    apply Nat.one_le_iff_ne_zero.mpr
    intro hmZero
    subst m
    simp at hm
  have hmMul : p ^ 2 * m ≤ p ^ 2 * row.bound := by
    calc
      p ^ 2 * m = pivot * point + 1 := hm.symm
      _ ≤ row.bound * p ^ 2 := hnumerator
      _ = p ^ 2 * row.bound := by ring
  have hmUpper : m ≤ row.bound :=
    Nat.le_of_mul_le_mul_left hmMul (pow_pos hpPrime.pos _)
  exact ⟨p, m, hpPrime, hpLarge, hm.symm, hmPos, hmUpper⟩

#print axioms mixedSupport_length_le_seven_of_prod_lt_fortyMillion
#print axioms actualTwentyMillionPivotSupport_length_le_seven
#print axioms actualTwentyMillionSupport_dropLast_lt_normalMaskBound
#print axioms twentyMillionHighTailSquarePoint_has_bounded_quotient

end Erdos848
