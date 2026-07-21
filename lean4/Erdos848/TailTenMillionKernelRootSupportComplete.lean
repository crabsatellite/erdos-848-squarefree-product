import Erdos848.TailGlobalMixedSupportComplete
import Erdos848.TailTenMillionKernelRootTypes

namespace Erdos848

/-!
# Completeness of the fixed twenty-million support domain

An actual increasing support of length at most six and product below
`20_000_000` contributes its `dropLast` prefix to the generated root table.
The final prime is retained only as the extension witness required by
`feasibleSupportPrefixes`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem tenMillion_dropLast_sublist_self {alpha : Type*}
    (values : List alpha) : List.Sublist values.dropLast values := by
  induction values with
  | nil => simp
  | cons value values ih =>
      cases values with
      | nil => simp
      | cons next rest => simpa using ih.cons_cons value

theorem actualTenMillionSupport_dropLast_mem_rootFeasible
    {k : Nat} (hk : k ≤ 6) (support : List Nat)
    (hLength : support.length = k)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hFinite : support.prod < 20_000_000) :
    support.dropLast ∈ tenMillionKernelRootFeasiblePrefixes k := by
  by_cases hkZero : k = 0
  · have hSupportLength : support.length = 0 := hLength.trans hkZero
    have hSupport : support = [] := by simpa using hSupportLength
    simp [hSupport, tenMillionKernelRootFeasiblePrefixes, hkZero]
  have hSupport : support ≠ [] := by
    intro h
    subst support
    simp at hLength
    omega
  have hThreshold :
      20_000_000 ≤ globalMixedSupportProductThreshold k := by
    interval_cases k <;>
      norm_num [globalMixedSupportProductThreshold] at *
  have hFiniteGlobal :
      support.prod < globalMixedSupportProductThreshold k :=
    hFinite.trans_le hThreshold
  let supportPrefix := support.dropLast
  let q := support.getLast hSupport
  let qProxy := min q 9161
  let selected := supportPrefix ++ [qProxy]
  have hqMem : q ∈ support := List.getLast_mem hSupport
  have hqPrime : FiveMillionSupportPrime q := hPrimes q hqMem
  have hdecomp := List.dropLast_append_getLast hSupport
  have hprodEq := congrArg List.prod hdecomp
  simp only [List.prod_append, List.prod_cons, List.prod_nil, Nat.mul_one]
    at hprodEq
  have hPrefixLtLimit : ∀ p ∈ supportPrefix, p < 9161 := by
    intro p hp
    exact mixedSupport_dropLast_lt_9161 (by omega) support hLength hPrimes
      hIncreasing hFiniteGlobal p hp
  have hqProxyPrime : FiveMillionSupportPrime qProxy := by
    dsimp [qProxy]
    by_cases hqUpper : q ≤ 9161
    · rw [min_eq_left hqUpper]
      exact hqPrime
    · rw [min_eq_right (by omega)]
      norm_num [FiveMillionSupportPrime]
  have hqProxyUpper : qProxy ≤ 9161 := min_le_right _ _
  have hPrefixPairwise : supportPrefix.Pairwise (· < ·) :=
    hIncreasing.sublist (tenMillion_dropLast_sublist_self support)
  have hSelectedPairwise : selected.Pairwise (· < ·) := by
    rw [List.pairwise_append]
    refine ⟨hPrefixPairwise, by simp, ?_⟩
    intro p hp r hr
    simp only [List.mem_singleton] at hr
    subst r
    have hpq : p < q := hIncreasing.rel_dropLast_getLast hp
    exact lt_min hpq (hPrefixLtLimit p hp)
  have hSubset : selected ⊆ globalMixedKernelSupportPrimes := by
    intro p hp
    rcases List.mem_append.mp hp with hpPrefix | hpLast
    · exact mem_globalMixedKernelSupportPrimes_of_supportPrime
        (hPrimes p (List.dropLast_subset support hpPrefix))
        (Nat.le_of_lt (hPrefixLtLimit p hpPrefix))
    · have hpEq : p = qProxy := by simpa using hpLast
      subst p
      exact mem_globalMixedKernelSupportPrimes_of_supportPrime
        hqProxyPrime hqProxyUpper
  have hSubperm : List.Subperm selected globalMixedKernelSupportPrimes :=
    List.subperm_of_subset hSelectedPairwise.nodup hSubset
  have hSublist : List.Sublist selected globalMixedKernelSupportPrimes :=
    List.sublist_of_subperm_of_pairwise hSubperm hSelectedPairwise
      globalMixedKernelSupportPrimes_pairwise_lt
  have hPrefixLength : supportPrefix.length = k - 1 := by
    dsimp [supportPrefix]
    simp [List.length_dropLast, hLength]
  have hSelectedLength : selected.length = (k - 1) + 1 := by
    simp [selected, hPrefixLength]
  have hSelectedProduct : selected.prod ≤ support.prod := by
    calc
      selected.prod = supportPrefix.prod * qProxy := by simp [selected]
      _ ≤ supportPrefix.prod * q :=
        Nat.mul_le_mul_left _ (min_le_left _ _)
      _ = support.prod := hprodEq
  have hEnumerated := feasibleSupportPrefixes_complete
    (bound := 20_000_000) (need := k - 1) (product := 1)
    hSublist
    (globalMixedKernelSupportPrimes_pairwise_lt.imp
      fun h => Nat.le_of_lt h)
    hSelectedLength
    (by simpa using hSelectedProduct.trans (Nat.le_of_lt hFinite))
  have hTake : selected.take (k - 1) = supportPrefix := by
    simp [selected, hPrefixLength]
  simp only [tenMillionKernelRootFeasiblePrefixes, dif_neg hkZero]
  simpa [hTake] using hEnumerated

#print axioms actualTenMillionSupport_dropLast_mem_rootFeasible

end Erdos848
