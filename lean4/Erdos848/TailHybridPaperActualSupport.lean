import Erdos848.TailGlobalMixedActualSurvivors
import Erdos848.TailHybridPaperRootSupportComplete

namespace Erdos848

/-! # Actual pivot support and quotient bounds on the four paper blocks -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem mixedSupport_length_le_eight_of_prod_lt_twoBillion
    (support : List Nat)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod < 2_000_000_000) :
    support.length ≤ 8 := by
  by_contra hLength
  have hNine : 9 ≤ support.length := by omega
  obtain ⟨p₀, p₁, p₂, p₃, p₄, p₅, p₆, p₇, p₈, rest, rfl⟩ :
      ∃ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ rest,
        support =
          p₀ :: p₁ :: p₂ :: p₃ :: p₄ :: p₅ :: p₆ :: p₇ ::
            p₈ :: rest := by
    match support with
    | p₀ :: p₁ :: p₂ :: p₃ :: p₄ :: p₅ :: p₆ :: p₇ :: p₈ :: rest =>
        exact ⟨p₀, p₁, p₂, p₃, p₄, p₅, p₆, p₇, p₈, rest, rfl⟩
    | [] | [_] | [_, _] | [_, _, _] | [_, _, _, _] |
      [_, _, _, _, _] | [_, _, _, _, _, _] |
      [_, _, _, _, _, _, _] | [_, _, _, _, _, _, _, _] =>
        simp at hNine
  have hp₀ := hPrimes p₀ (by simp)
  have hp₁ := hPrimes p₁ (by simp)
  have hp₂ := hPrimes p₂ (by simp)
  have hp₃ := hPrimes p₃ (by simp)
  have hp₄ := hPrimes p₄ (by simp)
  have hp₅ := hPrimes p₅ (by simp)
  have hp₆ := hPrimes p₆ (by simp)
  have hp₇ := hPrimes p₇ (by simp)
  have hp₈ := hPrimes p₈ (by simp)
  have hpair₀ :=
    List.pairwise_cons.mp hIncreasing
  have hp₀₁ : p₀ < p₁ :=
    hpair₀.1 p₁ (by simp)
  have hpair₁ :=
    List.pairwise_cons.mp hpair₀.2
  have hp₁₂ : p₁ < p₂ :=
    hpair₁.1 p₂ (by simp)
  have hpair₂ :=
    List.pairwise_cons.mp hpair₁.2
  have hp₂₃ : p₂ < p₃ :=
    hpair₂.1 p₃ (by simp)
  have hpair₃ :=
    List.pairwise_cons.mp hpair₂.2
  have hp₃₄ : p₃ < p₄ :=
    hpair₃.1 p₄ (by simp)
  have hpair₄ :=
    List.pairwise_cons.mp hpair₃.2
  have hp₄₅ : p₄ < p₅ :=
    hpair₄.1 p₅ (by simp)
  have hpair₅ :=
    List.pairwise_cons.mp hpair₄.2
  have hp₅₆ : p₅ < p₆ :=
    hpair₅.1 p₆ (by simp)
  have hpair₆ :=
    List.pairwise_cons.mp hpair₅.2
  have hp₆₇ : p₆ < p₇ :=
    hpair₆.1 p₇ (by simp)
  have hpair₇ :=
    List.pairwise_cons.mp hpair₆.2
  have hp₇₈ : p₇ < p₈ :=
    hpair₇.1 p₈ (by simp)
  simp only [List.pairwise_cons] at hIncreasing
  have hp₀Lower : 3 ≤ p₀ := by
    have hpTwo := hp₀.1.two_le
    have hpNotTwo : p₀ ≠ 2 := by
      intro h
      subst p₀
      norm_num [FiveMillionSupportPrime] at hp₀
    omega
  have hp₁Lower : 7 ≤ p₁ := by
    by_contra h
    have hUpper : p₁ ≤ 6 := by omega
    interval_cases p₁ <;>
      norm_num [FiveMillionSupportPrime] at hp₁ <;> omega
  have hp₂Lower : 11 ≤ p₂ := by
    by_contra h
    have hUpper : p₂ ≤ 10 := by omega
    interval_cases p₂ <;>
      norm_num [FiveMillionSupportPrime] at hp₂ <;> omega
  have hp₃Lower : 13 ≤ p₃ := by
    by_contra h
    have hUpper : p₃ ≤ 12 := by omega
    interval_cases p₃ <;>
      norm_num [FiveMillionSupportPrime] at hp₃ <;> omega
  have hp₄Lower : 17 ≤ p₄ := by
    by_contra h
    have hUpper : p₄ ≤ 16 := by omega
    interval_cases p₄ <;>
      norm_num [FiveMillionSupportPrime] at hp₄ <;> omega
  have hp₅Lower : 19 ≤ p₅ := by
    by_contra h
    have hUpper : p₅ ≤ 18 := by omega
    interval_cases p₅ <;>
      norm_num [FiveMillionSupportPrime] at hp₅ <;> omega
  have hp₆Lower : 23 ≤ p₆ := by
    by_contra h
    have hUpper : p₆ ≤ 22 := by omega
    interval_cases p₆ <;>
      norm_num [FiveMillionSupportPrime] at hp₆ <;> omega
  have hp₇Lower : 29 ≤ p₇ := by
    by_contra h
    have hUpper : p₇ ≤ 28 := by omega
    interval_cases p₇ <;>
      norm_num [FiveMillionSupportPrime] at hp₇ <;> omega
  have hp₈Lower : 31 ≤ p₈ := by
    by_contra h
    have hUpper : p₈ ≤ 30 := by omega
    interval_cases p₈ <;>
      norm_num [FiveMillionSupportPrime] at hp₈ <;> omega
  have hPrefix :
      20_056_049_013 ≤
        p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ * p₈ := by
    calc
      20_056_049_013 =
          3 * 7 * 11 * 13 * 17 * 19 * 23 * 29 * 31 := by norm_num
      _ ≤ p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ * p₈ := by
        gcongr
  have hRestPositive : 0 < rest.prod := List.prod_pos fun p hp =>
    (hPrimes p (by simp [hp])).1.pos
  have hFull :
      20_056_049_013 ≤
        p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ * p₈ *
          rest.prod := by
    calc
      20_056_049_013 ≤
          p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ * p₈ :=
        hPrefix
      _ =
          p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ * p₈ * 1 := by
        simp
      _ ≤
          p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ * p₈ *
            rest.prod := by
        exact Nat.mul_le_mul_left _ (show 1 ≤ rest.prod from hRestPositive)
  have hProduct' :
      p₀ * p₁ * p₂ * p₃ * p₄ * p₅ * p₆ * p₇ * p₈ *
          rest.prod <
        2_000_000_000 := by
    simpa only [List.prod_cons, Nat.mul_assoc] using hProduct
  omega

theorem actualHybridPaperPivotSupport_product_lt
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    {regime : HybridPaperDiagonalRegime}
    (hUpper : N < regime.stop)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B) :
    (fiveMillionPivotSupport pivot).prod < regime.stop := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotBounds :=
    hallCompletion_subset_Icc hBout hpivotCompletion
  exact
    (fiveMillionPivotSupport_prod_le
      (Finset.mem_Icc.mp hpivotBounds).1
      (Finset.mem_Icc.mp hpivotBounds).2).trans_lt hUpper

theorem actualHybridPaperPivotSupport_length_le_eight
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    {regime : HybridPaperDiagonalRegime}
    (hUpper : N < regime.stop)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B) :
    (fiveMillionPivotSupport pivot).length ≤ 8 := by
  apply mixedSupport_length_le_eight_of_prod_lt_twoBillion
  · exact fiveMillionPivotSupport_primes pivot
  · exact fiveMillionPivotSupport_increasing pivot
  · exact
      (actualHybridPaperPivotSupport_product_lt
        hUpper hBout hpivotResidual).trans_le regime.stop_le_twoBillion

/-- The regime split gives the exact integer-box bound
`m ≤ regime.rootSplit^2 = regime.rootBound`. -/
theorem hybridPaperHighTailSquarePoint_has_bounded_quotient
    {N pivot point : Nat} (regime : HybridPaperDiagonalRegime)
    (hpivot : pivot ≤ N)
    (hpoint :
      point ∈ twoBaseHighTailSquarePoints
        N pivot (N / regime.rootSplit)) :
    ∃ p m : Nat,
      Nat.Prime p ∧ N / regime.rootSplit < p ∧
      p ^ 2 * m = pivot * point + 1 ∧
      1 ≤ m ∧ m ≤ regime.rootBound := by
  classical
  have hparts := Finset.mem_filter.mp hpoint
  have hpointLe : point ≤ N :=
    (Finset.mem_Icc.mp (lowBaseSet_subset_Icc N hparts.1)).2
  obtain ⟨p, hpPrime, hpLarge, hpDiv⟩ := hparts.2
  obtain ⟨m, hm⟩ := hpDiv
  have hsplit : 0 < regime.rootSplit := regime.rootSplit_pos
  have hNp : N < p * regime.rootSplit :=
    (Nat.div_lt_iff_lt_mul hsplit).mp hpLarge
  have hNsq : N * N < (p * regime.rootSplit) * (p * regime.rootSplit) := by
    nlinarith
  have hNsq' : N ^ 2 + 1 ≤ regime.rootBound * p ^ 2 := by
    rw [regime.rootBound_eq_split_sq]
    nlinarith
  have hproduct : pivot * point ≤ N * N :=
    Nat.mul_le_mul hpivot hpointLe
  have hnumerator :
      pivot * point + 1 ≤ regime.rootBound * p ^ 2 := by
    calc
      pivot * point + 1 ≤ N ^ 2 + 1 := by
        simpa [pow_two] using Nat.add_le_add_right hproduct 1
      _ ≤ regime.rootBound * p ^ 2 := hNsq'
  have hmPos : 1 ≤ m := by
    apply Nat.one_le_iff_ne_zero.mpr
    intro hmZero
    subst m
    simp at hm
  have hmMul : p ^ 2 * m ≤ p ^ 2 * regime.rootBound := by
    calc
      p ^ 2 * m = pivot * point + 1 := hm.symm
      _ ≤ regime.rootBound * p ^ 2 := hnumerator
      _ = p ^ 2 * regime.rootBound := by ring
  have hmUpper : m ≤ regime.rootBound :=
    Nat.le_of_mul_le_mul_left hmMul (pow_pos hpPrime.pos _)
  exact ⟨p, m, hpPrime, hpLarge, hm.symm, hmPos, hmUpper⟩

#print axioms mixedSupport_length_le_eight_of_prod_lt_twoBillion
#print axioms actualHybridPaperPivotSupport_length_le_eight
#print axioms hybridPaperHighTailSquarePoint_has_bounded_quotient

end Erdos848
