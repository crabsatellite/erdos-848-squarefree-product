import Erdos848.TailGlobalMixedLargeProduct

namespace Erdos848

/-!
# Exhaustive mixed-support row classification
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem two_pow_length_le_prod_of_mixedSupportPrimes
    (support : List ℕ)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p) :
    2 ^ support.length ≤ support.prod := by
  induction support with
  | nil => simp
  | cons p support ih =>
      have hp : 2 ≤ p := (hPrimes p (by simp)).1.two_le
      have htail : ∀ q ∈ support, FiveMillionSupportPrime q := by
        intro q hq
        exact hPrimes q (by simp [hq])
      simp only [List.length_cons, List.prod_cons, pow_succ]
      calc
        2 ^ support.length * 2 ≤ support.prod * p :=
          Nat.mul_le_mul (ih htail) hp
        _ = p * support.prod := Nat.mul_comm _ _

/-- Nine increasing odd non-five support primes already exceed the mixed
crude threshold; every later prime contributes at least another factor two. -/
theorem supportProduct_ge_globalMixedThreshold_of_nine
    (support : List ℕ)
    (hLength : 9 ≤ support.length)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·)) :
    globalMixedSupportProductThreshold support.length ≤ support.prod := by
  obtain ⟨p₀, p₁, p₂, p₃, p₄, p₅, p₆, p₇, p₈, rest, rfl⟩ :
      ∃ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ rest,
        support = p₀ :: p₁ :: p₂ :: p₃ :: p₄ :: p₅ :: p₆ :: p₇ :: p₈ :: rest := by
    match support with
    | p₀ :: p₁ :: p₂ :: p₃ :: p₄ :: p₅ :: p₆ :: p₇ :: p₈ :: rest =>
        exact ⟨p₀, p₁, p₂, p₃, p₄, p₅, p₆, p₇, p₈, rest, rfl⟩
    | [] | [_] | [_, _] | [_, _, _] | [_, _, _, _] |
      [_, _, _, _, _] | [_, _, _, _, _, _] |
      [_, _, _, _, _, _, _] | [_, _, _, _, _, _, _, _] =>
        simp at hLength
  have hp₀ := hPrimes p₀ (by simp)
  have hp₁ := hPrimes p₁ (by simp)
  have hp₂ := hPrimes p₂ (by simp)
  have hp₃ := hPrimes p₃ (by simp)
  have hp₄ := hPrimes p₄ (by simp)
  have hp₅ := hPrimes p₅ (by simp)
  have hp₆ := hPrimes p₆ (by simp)
  have hp₇ := hPrimes p₇ (by simp)
  have hp₈ := hPrimes p₈ (by simp)
  simp only [List.pairwise_cons] at hIncreasing
  have h₀₁ : p₀ < p₁ := hIncreasing.1 p₁ (by simp)
  have h₁₂ : p₁ < p₂ := hIncreasing.2.1 p₂ (by simp)
  have h₂₃ : p₂ < p₃ := hIncreasing.2.2.1 p₃ (by simp)
  have h₃₄ : p₃ < p₄ := hIncreasing.2.2.2.1 p₄ (by simp)
  have h₄₅ : p₄ < p₅ := hIncreasing.2.2.2.2.1 p₅ (by simp)
  have h₅₆ : p₅ < p₆ := hIncreasing.2.2.2.2.2.1 p₆ (by simp)
  have h₆₇ : p₆ < p₇ := hIncreasing.2.2.2.2.2.2.1 p₇ (by simp)
  have h₇₈ : p₇ < p₈ := hIncreasing.2.2.2.2.2.2.2.1 p₈ (by simp)
  have hp₀Lower : 3 ≤ p₀ := by
    have hpTwo := hp₀.1.two_le
    have hpNotTwo : p₀ ≠ 2 := by
      intro h
      subst p₀
      norm_num [FiveMillionSupportPrime] at hp₀
    omega
  have hp₁Lower : 7 ≤ p₁ := by
    by_contra h
    interval_cases p₁ <;> norm_num [FiveMillionSupportPrime] at hp₁ <;> omega
  have hp₂Lower : 11 ≤ p₂ := by
    by_contra h
    interval_cases p₂ <;> norm_num [FiveMillionSupportPrime] at hp₂ <;> omega
  have hp₃Lower : 13 ≤ p₃ := by
    by_contra h
    interval_cases p₃ <;> norm_num [FiveMillionSupportPrime] at hp₃ <;> omega
  have hp₄Lower : 17 ≤ p₄ := by
    by_contra h
    interval_cases p₄ <;> norm_num [FiveMillionSupportPrime] at hp₄ <;> omega
  have hp₅Lower : 19 ≤ p₅ := by
    by_contra h
    interval_cases p₅ <;> norm_num [FiveMillionSupportPrime] at hp₅ <;> omega
  have hp₆Lower : 23 ≤ p₆ := by
    by_contra h
    interval_cases p₆ <;> norm_num [FiveMillionSupportPrime] at hp₆ <;> omega
  have hp₇Lower : 29 ≤ p₇ := by
    by_contra h
    interval_cases p₇ <;> norm_num [FiveMillionSupportPrime] at hp₇ <;> omega
  have hp₈Lower : 31 ≤ p₈ := by
    by_contra h
    interval_cases p₈ <;> norm_num [FiveMillionSupportPrime] at hp₈ <;> omega
  have hPrefixProduct :
      20_056_049_013 ≤ p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ * p₈ := by
    calc
      20_056_049_013 = 3 * 7 * 11 * 13 * 17 * 19 * 23 * 29 * 31 := by
        norm_num
      _ ≤ p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ * p₈ := by gcongr
  have hRestPrimes : ∀ p ∈ rest, FiveMillionSupportPrime p := by
    intro p hp
    exact hPrimes p (by simp [hp])
  have hRestProduct :=
    two_pow_length_le_prod_of_mixedSupportPrimes rest hRestPrimes
  have hLengthExact :
      (p₀ :: p₁ :: p₂ :: p₃ :: p₄ :: p₅ :: p₆ :: p₇ :: p₈ :: rest).length =
        9 + rest.length := by
    simp only [List.length_cons]
    omega
  have hProdExact :
      (p₀ :: p₁ :: p₂ :: p₃ :: p₄ :: p₅ :: p₆ :: p₇ :: p₈ :: rest).prod =
        (p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ * p₈) * rest.prod := by
    simp
    ring
  rw [hLengthExact, hProdExact]
  unfold globalMixedSupportProductThreshold
  rw [pow_add]
  norm_num
  calc
    21_000_000 * (512 * 2 ^ rest.length) =
        10_752_000_000 * 2 ^ rest.length := by ring
    _ ≤
        20_056_049_013 * 2 ^ rest.length :=
      Nat.mul_le_mul_right _ (by norm_num)
    _ ≤ (p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ * p₈) * rest.prod :=
      Nat.mul_le_mul hPrefixProduct hRestProduct

/-- Finite checker below the threshold, analytic empty-screen row above it;
the two cases exhaust every actual increasing support. -/
theorem actualMixedSupport_all_rowBounds
    {N : ℕ} (support : List ℕ)
    (hN : 5_000_000 ≤ N)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod ≤ N) :
    globalMixedRowBound support.length support.dropLast false false N ∧
      globalMixedRowBound support.length support.dropLast false true N ∧
      globalMixedRowBound support.length support.dropLast true false N ∧
      globalMixedRowBound support.length support.dropLast true true N := by
  by_cases hLength : support.length ≤ 8
  · by_cases hFinite : support.prod <
      globalMixedSupportProductThreshold support.length
    · exact actualMixedSupport_dropLast_rowBounds
        (k := support.length) support hLength rfl hPrimes hIncreasing
        hFinite hN hProduct
    · exact actualMixedSupport_large_product_rowBounds support hN hProduct
        (Nat.le_of_not_gt hFinite)
  · exact actualMixedSupport_large_product_rowBounds support hN hProduct
      (supportProduct_ge_globalMixedThreshold_of_nine support
        (by omega) hPrimes hIncreasing)

theorem globalMixedHighPoints_allSupport
    {N : ℕ} {B : Finset ℕ} {pivot : ℕ}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpivotOdd : Odd pivot) :
    (((twoBaseHighTailSquarePoints N pivot (N / 55)).card : ℚ) +
      2 * Nat.primeCounting (N / 55)) / N ≤
        fiveMillionOddRoot7Envelope / 3 := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotBounds := hallCompletion_subset_Icc hBout hpivotCompletion
  have hrows := actualMixedSupport_all_rowBounds
    (fiveMillionPivotSupport pivot) hLower
    (fiveMillionPivotSupport_primes pivot)
    (fiveMillionPivotSupport_increasing pivot)
    (fiveMillionPivotSupport_prod_le
      (Finset.mem_Icc.mp hpivotBounds).1
      (Finset.mem_Icc.mp hpivotBounds).2)
  exact globalMixedHighPoints_row_of_four
    hLower hBout hpivotResidual hpivotOdd hrows

#print axioms supportProduct_ge_globalMixedThreshold_of_nine
#print axioms actualMixedSupport_all_rowBounds
#print axioms globalMixedHighPoints_allSupport

end Erdos848
