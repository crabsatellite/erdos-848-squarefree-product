import Mathlib

namespace Erdos848

/-! ## Structural exclusion of an eighth root-profile row -/

/-- The odd support primes exclude `5`; this is the exact prime universe in
the quotient-root scan after the mod-five square coset has been fixed. -/
def FiveMillionSupportPrime (p : ℕ) : Prop :=
  Nat.Prime p ∧ Odd p ∧ p ≠ 5

/-- Seven increasing non-five odd primes already have product greater than
the full ten-million endpoint.  Hence the `k = 0, ..., 6` profile is
exhaustive; a hidden `k ≥ 7` numerical row is unconditionally impossible. -/
theorem seven_support_primes_product_gt_tenMillion
    {p₀ p₁ p₂ p₃ p₄ p₅ p₆ : ℕ}
    (hp₀ : FiveMillionSupportPrime p₀)
    (hp₁ : FiveMillionSupportPrime p₁)
    (hp₂ : FiveMillionSupportPrime p₂)
    (hp₃ : FiveMillionSupportPrime p₃)
    (hp₄ : FiveMillionSupportPrime p₄)
    (hp₅ : FiveMillionSupportPrime p₅)
    (hp₆ : FiveMillionSupportPrime p₆)
    (h₀₁ : p₀ < p₁) (h₁₂ : p₁ < p₂) (h₂₃ : p₂ < p₃)
    (h₃₄ : p₃ < p₄) (h₄₅ : p₄ < p₅) (h₅₆ : p₅ < p₆) :
    10_000_000 < p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ := by
  have hp₀Lower : 3 ≤ p₀ := by
    have hpTwo := hp₀.1.two_le
    have hpNotTwo : p₀ ≠ 2 := by
      intro h
      subst p₀
      norm_num [FiveMillionSupportPrime] at hp₀
    omega
  have hp₁Lower : 7 ≤ p₁ := by
    by_contra h
    have hp₁Upper : p₁ ≤ 6 := by omega
    interval_cases p₁ <;> norm_num [FiveMillionSupportPrime] at hp₁ <;> omega
  have hp₂Lower : 11 ≤ p₂ := by
    by_contra h
    have hp₂Upper : p₂ ≤ 10 := by omega
    interval_cases p₂ <;> norm_num [FiveMillionSupportPrime] at hp₂ <;> omega
  have hp₃Lower : 13 ≤ p₃ := by
    by_contra h
    have hp₃Upper : p₃ ≤ 12 := by omega
    interval_cases p₃ <;> norm_num [FiveMillionSupportPrime] at hp₃ <;> omega
  have hp₄Lower : 17 ≤ p₄ := by
    by_contra h
    have hp₄Upper : p₄ ≤ 16 := by omega
    interval_cases p₄ <;> norm_num [FiveMillionSupportPrime] at hp₄ <;> omega
  have hp₅Lower : 19 ≤ p₅ := by
    by_contra h
    have hp₅Upper : p₅ ≤ 18 := by omega
    interval_cases p₅ <;> norm_num [FiveMillionSupportPrime] at hp₅ <;> omega
  have hp₆Lower : 23 ≤ p₆ := by
    by_contra h
    have hp₆Upper : p₆ ≤ 22 := by omega
    interval_cases p₆ <;> norm_num [FiveMillionSupportPrime] at hp₆ <;> omega
  have hProduct₁ : 3 * 7 ≤ p₀ * p₁ :=
    Nat.mul_le_mul hp₀Lower hp₁Lower
  have hProduct₂ : 3 * 7 * 11 ≤ p₀ * p₁ * p₂ :=
    Nat.mul_le_mul hProduct₁ hp₂Lower
  have hProduct₃ : 3 * 7 * 11 * 13 ≤ p₀ * p₁ * p₂ * p₃ :=
    Nat.mul_le_mul hProduct₂ hp₃Lower
  have hProduct₄ : 3 * 7 * 11 * 13 * 17 ≤ p₀ * p₁ * p₂ * p₃ * p₄ :=
    Nat.mul_le_mul hProduct₃ hp₄Lower
  have hProduct₅ : 3 * 7 * 11 * 13 * 17 * 19 ≤
      p₀ * p₁ * p₂ * p₃ * p₄ * p₅ :=
    Nat.mul_le_mul hProduct₄ hp₅Lower
  have hProduct₆ : 3 * 7 * 11 * 13 * 17 * 19 * 23 ≤
      p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ :=
    Nat.mul_le_mul hProduct₅ hp₆Lower
  norm_num at hProduct₆ ⊢
  omega

/-- List form of the same exclusion.  This is the structural fact needed by
the modulus-factorization bridge: every increasing support of non-five odd
primes under the ten-million product bound has at most six members. -/
theorem supportPrimeList_length_le_six
    {support : List ℕ}
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod ≤ 10_000_000) :
    support.length ≤ 6 := by
  by_contra hLength
  have hSeven : 7 ≤ support.length := by omega
  obtain ⟨p₀, support₁, rfl⟩ :=
    List.exists_cons_of_length_pos (show 0 < support.length by omega)
  obtain ⟨p₁, support₂, rfl⟩ :=
    List.exists_cons_of_length_pos (show 0 < support₁.length by simp at hSeven ⊢; omega)
  obtain ⟨p₂, support₃, rfl⟩ :=
    List.exists_cons_of_length_pos (show 0 < support₂.length by simp at hSeven ⊢; omega)
  obtain ⟨p₃, support₄, rfl⟩ :=
    List.exists_cons_of_length_pos (show 0 < support₃.length by simp at hSeven ⊢; omega)
  obtain ⟨p₄, support₅, rfl⟩ :=
    List.exists_cons_of_length_pos (show 0 < support₄.length by simp at hSeven ⊢; omega)
  obtain ⟨p₅, support₆, rfl⟩ :=
    List.exists_cons_of_length_pos (show 0 < support₅.length by simp at hSeven ⊢; omega)
  obtain ⟨p₆, tail, rfl⟩ :=
    List.exists_cons_of_length_pos (show 0 < support₆.length by simp at hSeven ⊢; omega)
  have hp₀ := hPrimes p₀ (by simp)
  have hp₁ := hPrimes p₁ (by simp)
  have hp₂ := hPrimes p₂ (by simp)
  have hp₃ := hPrimes p₃ (by simp)
  have hp₄ := hPrimes p₄ (by simp)
  have hp₅ := hPrimes p₅ (by simp)
  have hp₆ := hPrimes p₆ (by simp)
  have h₀₁ : p₀ < p₁ :=
    (List.pairwise_cons.mp hIncreasing).1 p₁ (by simp)
  have hIncreasing₁ := (List.pairwise_cons.mp hIncreasing).2
  have h₁₂ : p₁ < p₂ :=
    (List.pairwise_cons.mp hIncreasing₁).1 p₂ (by simp)
  have hIncreasing₂ := (List.pairwise_cons.mp hIncreasing₁).2
  have h₂₃ : p₂ < p₃ :=
    (List.pairwise_cons.mp hIncreasing₂).1 p₃ (by simp)
  have hIncreasing₃ := (List.pairwise_cons.mp hIncreasing₂).2
  have h₃₄ : p₃ < p₄ :=
    (List.pairwise_cons.mp hIncreasing₃).1 p₄ (by simp)
  have hIncreasing₄ := (List.pairwise_cons.mp hIncreasing₃).2
  have h₄₅ : p₄ < p₅ :=
    (List.pairwise_cons.mp hIncreasing₄).1 p₅ (by simp)
  have hIncreasing₅ := (List.pairwise_cons.mp hIncreasing₄).2
  have h₅₆ : p₅ < p₆ :=
    (List.pairwise_cons.mp hIncreasing₅).1 p₆ (by simp)
  have hFirstSeven := seven_support_primes_product_gt_tenMillion
    hp₀ hp₁ hp₂ hp₃ hp₄ hp₅ hp₆ h₀₁ h₁₂ h₂₃ h₃₄ h₄₅ h₅₆
  have hTailPositive : 0 < tail.prod := List.prod_pos fun p hp =>
    (hPrimes p (by simp [hp])).1.pos
  have hTailOne : 1 ≤ tail.prod := hTailPositive
  have hFullLower :
      p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ ≤
        p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * tail.prod := by
    calc
      p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ =
          p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * 1 := by simp
      _ ≤ p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * tail.prod :=
        Nat.mul_le_mul_left _ hTailOne
  have hFullProduct :
      p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * tail.prod ≤ 10_000_000 := by
    simpa [List.prod_cons, Nat.mul_assoc] using hProduct
  omega

#print axioms seven_support_primes_product_gt_tenMillion
#print axioms supportPrimeList_length_le_six

end Erdos848
