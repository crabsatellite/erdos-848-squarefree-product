import Erdos848.TailGlobalMixedSupportBridge
import Erdos848.TailSupportEnumeration
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainCertificate

namespace Erdos848

/-!
# Completeness of the fixed-cut global mixed-support enumeration

The generated checker enumerates only increasing support prefixes that admit
one further support prime below `21_000_000 * 2^k`.  This module proves that
every actual support in the finite-product branch occurs in that enumeration.
No ambient value of `N` is scanned.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem mixed_dropLast_sublist_self {alpha : Type*}
    (values : List alpha) : List.Sublist values.dropLast values := by
  induction values with
  | nil => simp
  | cons value values ih =>
      cases values with
      | nil => simp
      | cons next rest => simpa using ih.cons_cons value

/-- The mixed candidate table is exactly the initial segment of the already
kernel-certified global odd, non-five prime domain through the extension
sentinel `9161`. -/
theorem globalMixedKernelSupportPrimes_eq_global_take :
    globalMixedKernelSupportPrimes =
      GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes.take 1134 := by
  rfl

theorem globalMixedKernelSupportPrimes_pairwise_lt :
    globalMixedKernelSupportPrimes.Pairwise (· < ·) := by
  rw [globalMixedKernelSupportPrimes_eq_global_take]
  exact
    GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes_pairwise_lt.sublist
      (List.take_sublist 1134 _)

/-- Every support prime through the mixed extension sentinel occurs in the
mixed candidate table.  The proof uses sortedness of the complete global
prime table; it does not rerun a primality oracle. -/
theorem mem_globalMixedKernelSupportPrimes_of_supportPrime
    {p : ℕ} (hp : FiveMillionSupportPrime p) (hUpper : p ≤ 9161) :
    p ∈ globalMixedKernelSupportPrimes := by
  rw [globalMixedKernelSupportPrimes_eq_global_take]
  have hpFull :
      p ∈ GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes :=
    GeneratedTailGlobalPureSupportCoverage.mem_kernelSupportPrimes_of_supportPrime
      hp (hUpper.trans (by norm_num))
  by_contra hpNotTake
  have hpAppend : p ∈
      GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes.take 1134 ++
        GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes.drop 1134 := by
    simpa using hpFull
  have hpDrop : p ∈
      GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes.drop 1134 :=
    (List.mem_append.mp hpAppend).resolve_left hpNotTake
  have hSentinelMixed : 9161 ∈ globalMixedKernelSupportPrimes := by
    simp [globalMixedKernelSupportPrimes]
  have hSentinelTake : 9161 ∈
      GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes.take 1134 := by
    simpa [globalMixedKernelSupportPrimes_eq_global_take] using hSentinelMixed
  have hPair :=
    GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes_pairwise_lt
  rw [← List.take_append_drop 1134
    GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes,
    List.pairwise_append] at hPair
  have hlt : 9161 < p := hPair.2.2 9161 hSentinelTake p hpDrop
  omega

private theorem three_pow_length_le_prod_of_supportPrimes
    (support : List ℕ)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p) :
    3 ^ support.length ≤ support.prod := by
  induction support with
  | nil => simp
  | cons p support ih =>
      have hpData := hPrimes p (by simp)
      have hpLower : 3 ≤ p := by
        have hpTwo : 2 ≤ p := hpData.1.two_le
        have hpNotTwo : p ≠ 2 := by
          intro h
          subst p
          norm_num [FiveMillionSupportPrime] at hpData
        omega
      have htail : ∀ q ∈ support, FiveMillionSupportPrime q := by
        intro q hq
        exact hPrimes q (by simp [hq])
      simp only [List.length_cons, List.prod_cons, pow_succ]
      calc
        3 ^ support.length * 3 ≤ support.prod * p :=
          Nat.mul_le_mul (ih htail) hpLower
        _ = p * support.prod := Nat.mul_comm _ _

private theorem supportPrime_ge_9173_of_gt_9161
    {q : ℕ} (hq : FiveMillionSupportPrime q) (hLower : 9161 < q) :
    9173 ≤ q := by
  by_contra hnot
  have hUpper : q ≤ 9172 := by omega
  interval_cases q <;> norm_num [FiveMillionSupportPrime] at hq

/-- In a support below the mixed finite-product threshold, every retained
prime is strictly below the extension sentinel.  The key inequality removes
the retained prime and the final extension prime from the product; all other
odd support primes contribute at least a factor of three. -/
theorem mixedSupport_dropLast_lt_9161
    {k : ℕ} (hk : k ≤ 8) (support : List ℕ)
    (hLength : support.length = k)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hFinite : support.prod < globalMixedSupportProductThreshold k) :
    ∀ p ∈ support.dropLast, p < 9161 := by
  intro p hpPrefix
  by_contra hpNot
  have hpLower : 9161 ≤ p := by omega
  have hpSupport : p ∈ support := List.dropLast_subset support hpPrefix
  have hSupport : support ≠ [] := List.ne_nil_of_mem hpSupport
  let q := support.getLast hSupport
  have hqSupport : q ∈ support := List.getLast_mem hSupport
  have hpq : p < q := hIncreasing.rel_dropLast_getLast hpPrefix
  have hqLower : 9173 ≤ q :=
    supportPrime_ge_9173_of_gt_9161 (hPrimes q hqSupport)
      (hpLower.trans_lt hpq)
  let withoutP := support.erase p
  have hqNe : q ≠ p := ne_of_gt hpq
  have hqWithoutP : q ∈ withoutP := by
    dsimp [withoutP]
    exact (List.mem_erase_of_ne hqNe).2 hqSupport
  let rest := withoutP.erase q
  have hrestPrimes : ∀ r ∈ rest, FiveMillionSupportPrime r := by
    intro r hr
    exact hPrimes r (List.mem_of_mem_erase (List.mem_of_mem_erase hr))
  have hrestPower : 3 ^ rest.length ≤ rest.prod :=
    three_pow_length_le_prod_of_supportPrimes rest hrestPrimes
  have hWithoutPLength : withoutP.length = k - 1 := by
    dsimp [withoutP]
    rw [List.length_erase_of_mem hpSupport, hLength]
  have hRestLength : rest.length = k - 2 := by
    dsimp [rest]
    rw [List.length_erase_of_mem hqWithoutP, hWithoutPLength]
    omega
  have hProductP : p * withoutP.prod = support.prod := by
    simpa [withoutP] using List.prod_erase hpSupport
  have hProductQ : q * rest.prod = withoutP.prod := by
    simpa [rest] using List.prod_erase hqWithoutP
  have hProductEq : support.prod = p * q * rest.prod := by
    calc
      support.prod = p * withoutP.prod := hProductP.symm
      _ = p * (q * rest.prod) := by rw [hProductQ]
      _ = p * q * rest.prod := by ring
  have hDropNonempty : support.dropLast ≠ [] := List.ne_nil_of_mem hpPrefix
  have hkTwo : 2 ≤ k := by
    have hDropLength : 0 < support.dropLast.length := by
      cases hdrop : support.dropLast with
      | nil => exact (hDropNonempty hdrop).elim
      | cons _ _ => simp
    simp [List.length_dropLast, hLength] at hDropLength
    omega
  have hThresholdStrict :
      globalMixedSupportProductThreshold k <
        9161 * 9173 * 3 ^ (k - 2) := by
    interval_cases k <;> norm_num [globalMixedSupportProductThreshold]
  have hProductLower : 9161 * 9173 * 3 ^ (k - 2) ≤ support.prod := by
    rw [hProductEq]
    exact Nat.mul_le_mul (Nat.mul_le_mul hpLower hqLower)
      (by simpa [hRestLength] using hrestPower)
  omega

/-- Completeness theorem consumed by the global mixed root certificate.
The last support prime is retained only as the extension witness required by
`feasibleSupportPrefixes`; the checker rows depend on `support.dropLast`.
-/
theorem actualMixedSupport_dropLast_mem_globalFeasible
    {k : ℕ} (hk : k ≤ 8) (support : List ℕ)
    (hLength : support.length = k)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hFinite : support.prod < globalMixedSupportProductThreshold k) :
    support.dropLast ∈ globalMixedFeasiblePrefixesKernel k := by
  by_cases hkZero : k = 0
  · have hSupportLength : support.length = 0 := hLength.trans hkZero
    have hSupport : support = [] := by simpa using hSupportLength
    simp [hSupport, globalMixedFeasiblePrefixesKernel, hkZero]
  have hSupport : support ≠ [] := by
    intro h
    subst support
    simp at hLength
    omega
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
    exact mixedSupport_dropLast_lt_9161 hk support hLength hPrimes
      hIncreasing hFinite p hp
  have hqProxyPrime : FiveMillionSupportPrime qProxy := by
    dsimp [qProxy]
    by_cases hqUpper : q ≤ 9161
    · rw [min_eq_left hqUpper]
      exact hqPrime
    · rw [min_eq_right (by omega)]
      norm_num [FiveMillionSupportPrime]
  have hqProxyUpper : qProxy ≤ 9161 := min_le_right _ _
  have hPrefixPairwise : supportPrefix.Pairwise (· < ·) :=
    hIncreasing.sublist (mixed_dropLast_sublist_self support)
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
      _ ≤ supportPrefix.prod * q := Nat.mul_le_mul_left _ (min_le_left _ _)
      _ = support.prod := hprodEq
  have hEnumerated := feasibleSupportPrefixes_complete
    (bound := globalMixedSupportProductThreshold k)
    (need := k - 1) (product := 1)
    hSublist
    (globalMixedKernelSupportPrimes_pairwise_lt.imp fun h => Nat.le_of_lt h)
    hSelectedLength
    (by simpa using hSelectedProduct.trans (Nat.le_of_lt hFinite))
  have hTake : selected.take (k - 1) = supportPrefix := by
    simp [selected, hPrefixLength]
  simp only [globalMixedFeasiblePrefixesKernel, dif_neg hkZero]
  simpa [hTake] using hEnumerated

#print axioms globalMixedKernelSupportPrimes_eq_global_take
#print axioms mem_globalMixedKernelSupportPrimes_of_supportPrime
#print axioms actualMixedSupport_dropLast_mem_globalFeasible

end Erdos848
