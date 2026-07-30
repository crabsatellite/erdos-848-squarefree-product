import Erdos848.TailGlobalMixedActualSurvivors
import Erdos848.TailTwentyMillionRootCounting

namespace Erdos848

/-!
# Variable-split transformed-root core

For a fixed split `K`, every square quotient above `N / K` is at most
`K^2`.  This module deliberately keeps the whole quotient interval instead
of using a generated support mask.  Its cardinality and reciprocal mass are
then controlled uniformly by elementary arithmetic.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def highVariableQuotientSurvivors (split : Nat) : Finset Nat :=
  Finset.Ico 1 (split ^ 2 + 1)

theorem highVariableQuotientSurvivors_card
    {split : Nat} :
    (highVariableQuotientSurvivors split).card = split ^ 2 := by
  simp [highVariableQuotientSurvivors]

theorem highVariableQuotientSurvivors_pos
    {split m : Nat}
    (hm : m ∈ highVariableQuotientSurvivors split) :
    0 < m := by
  exact (Finset.mem_Ico.mp hm).1

private theorem highVariableQuotientSurvivors_small_filter
    {split : Nat} (hSplit : 0 < split) :
    (highVariableQuotientSurvivors split).filter (fun m => m ≤ split) =
      Finset.Ico 1 (split + 1) := by
  ext m
  simp only [highVariableQuotientSurvivors, Finset.mem_filter,
    Finset.mem_Ico]
  constructor
  · rintro ⟨⟨hmPos, hmUpper⟩, hmSplit⟩
    exact ⟨hmPos, by omega⟩
  · rintro ⟨hmPos, hmSplit⟩
    exact ⟨⟨hmPos, by nlinarith⟩, by omega⟩

theorem highVariableQuotientSurvivors_reciprocal_sum_le
    {split : Nat} (hSplit : 0 < split) :
    (∑ m ∈ highVariableQuotientSurvivors split,
        (1 : Rat) / m) ≤ 2 * split := by
  let survivors := highVariableQuotientSurvivors split
  have hSplitQ : (0 : Rat) < split := by exact_mod_cast hSplit
  have hterm :
      ∀ m ∈ survivors,
        (1 : Rat) / m ≤
          (if m ≤ split then (1 : Rat) else 0) +
            (1 : Rat) / split := by
    intro m hm
    have hmPos : 0 < m :=
      highVariableQuotientSurvivors_pos hm
    by_cases hmSplit : m ≤ split
    · simp only [hmSplit, if_pos]
      have hmOne : (1 : Rat) ≤ m := by exact_mod_cast hmPos
      have hone : (1 : Rat) / m ≤ 1 := by
        simpa using (div_le_one (by exact_mod_cast hmPos)).mpr hmOne
      exact hone.trans (le_add_of_nonneg_right (by positivity))
    · have hSplitM : split ≤ m := by omega
      have hSplitMQ : (split : Rat) ≤ m := by
        exact_mod_cast hSplitM
      simpa [hmSplit] using
        (one_div_le_one_div_of_le hSplitQ hSplitMQ)
  have hindicator :
      (∑ m ∈ survivors,
          if m ≤ split then (1 : Rat) else 0) =
        (((survivors.filter (fun m => m ≤ split)).card : Nat) : Rat) := by
    rw [← Finset.sum_filter]
    simp
  calc
    (∑ m ∈ highVariableQuotientSurvivors split,
        (1 : Rat) / m) ≤
        ∑ m ∈ survivors,
          ((if m ≤ split then (1 : Rat) else 0) +
            (1 : Rat) / split) := by
      apply Finset.sum_le_sum
      intro m hm
      exact hterm m hm
    _ =
        (((survivors.filter (fun m => m ≤ split)).card : Nat) : Rat) +
          survivors.card * (1 / split : Rat) := by
      rw [Finset.sum_add_distrib]
      rw [hindicator]
      simp only [Finset.sum_const, nsmul_eq_mul]
    _ = (split : Rat) + split ^ 2 * (1 / split : Rat) := by
      rw [highVariableQuotientSurvivors_small_filter hSplit]
      rw [highVariableQuotientSurvivors_card]
      simp
    _ = 2 * split := by
      field_simp
      ring

theorem highVariableHighTailSquarePoint_has_bounded_quotient
    {N pivot point split : Nat}
    (hSplit : 0 < split)
    (hpivot : pivot ≤ N)
    (hpoint :
      point ∈ twoBaseHighTailSquarePoints N pivot (N / split)) :
    ∃ p m : Nat,
      Nat.Prime p ∧
      N / split < p ∧
      p ^ 2 * m = pivot * point + 1 ∧
      1 ≤ m ∧
      m ≤ split ^ 2 := by
  classical
  have hparts := Finset.mem_filter.mp hpoint
  have hpointLe : point ≤ N :=
    (Finset.mem_Icc.mp (lowBaseSet_subset_Icc N hparts.1)).2
  obtain ⟨p, hpPrime, hpLarge, hpDiv⟩ := hparts.2
  obtain ⟨m, hm⟩ := hpDiv
  have hNp : N < p * split :=
    (Nat.div_lt_iff_lt_mul hSplit).mp hpLarge
  have hNsq : N * N < (p * split) * (p * split) := by
    nlinarith
  have hNsq' : N ^ 2 + 1 ≤ split ^ 2 * p ^ 2 := by
    nlinarith
  have hproduct : pivot * point ≤ N * N :=
    Nat.mul_le_mul hpivot hpointLe
  have hnumerator :
      pivot * point + 1 ≤ split ^ 2 * p ^ 2 := by
    calc
      pivot * point + 1 ≤ N ^ 2 + 1 := by
        simpa [pow_two] using Nat.add_le_add_right hproduct 1
      _ ≤ split ^ 2 * p ^ 2 := hNsq'
  have hmPos : 1 ≤ m := by
    apply Nat.one_le_iff_ne_zero.mpr
    intro hmZero
    subst m
    simp at hm
  have hmMul : p ^ 2 * m ≤ p ^ 2 * split ^ 2 := by
    calc
      p ^ 2 * m = pivot * point + 1 := hm.symm
      _ ≤ split ^ 2 * p ^ 2 := hnumerator
      _ = p ^ 2 * split ^ 2 := by ring
  have hmUpper : m ≤ split ^ 2 :=
    Nat.le_of_mul_le_mul_left hmMul (pow_pos hpPrime.pos _)
  exact ⟨p, m, hpPrime, hpLarge, hm.symm, hmPos, hmUpper⟩

#print axioms highVariableQuotientSurvivors_reciprocal_sum_le
#print axioms highVariableHighTailSquarePoint_has_bounded_quotient

end Erdos848
