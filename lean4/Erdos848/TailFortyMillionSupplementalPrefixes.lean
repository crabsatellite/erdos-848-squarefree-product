import Erdos848.TailGlobalMixedSupportComplete
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainCertificate

namespace Erdos848

/-!
# The only support prefixes missing below two hundred million

The global mixed certificate uses the product cutoff `21M * 2^k`.  Below
`200M` this can miss rows only for `k = 2, 3`; `k <= 1` has the empty retained
prefix and `k >= 4` already has cutoff at least `336M`.
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def fortyMillionWideFeasiblePrefixesKernel (k : Nat) : List (List Nat) :=
  if _hk : k = 0 then [[]]
  else
    feasibleSupportPrefixes 199_999_999 (k - 1) 1
      GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes

def fortyMillionSupplementalFeasiblePrefixesKernel
    (k : Nat) : List (List Nat) :=
  if k = 2 ∨ k = 3 then
    (fortyMillionWideFeasiblePrefixesKernel k).filter fun supportPrefix =>
      decide (supportPrefix ∉ globalMixedFeasiblePrefixesKernel k)
  else []

private theorem fortyMillion_dropLast_sublist_self {α : Type*}
    (values : List α) : List.Sublist values.dropLast values := by
  induction values with
  | nil => simp
  | cons value values ih =>
      cases values with
      | nil => simp
      | cons next rest => simpa using ih.cons_cons value

private theorem mixedSupport_dropLast_lt_27809
    {k : Nat} (support : List Nat)
    (hLength : support.length = k)
    (hPrimes : ∀ p, p ∈ support → FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (fun left right => left < right))
    (hProduct : support.prod < 200_000_000) :
    ∀ p, p ∈ support.dropLast → p < 27809 := by
  intro p hpPrefix
  by_contra hpNot
  have hpLower : 27809 <= p := by omega
  have hpSupport : p ∈ support := List.dropLast_subset support hpPrefix
  have hSupport : support ≠ [] := List.ne_nil_of_mem hpSupport
  let q := support.getLast hSupport
  have hqSupport : q ∈ support := List.getLast_mem hSupport
  have hpq : p < q := hIncreasing.rel_dropLast_getLast hpPrefix
  let withoutP := support.erase p
  have hqNe : q ≠ p := ne_of_gt hpq
  have hqWithoutP : q ∈ withoutP := by
    dsimp [withoutP]
    exact (List.mem_erase_of_ne hqNe).2 hqSupport
  let rest := withoutP.erase q
  have hrestPrimes : ∀ r, r ∈ rest → FiveMillionSupportPrime r := by
    intro r hr
    exact hPrimes r (List.mem_of_mem_erase (List.mem_of_mem_erase hr))
  have hrestPositive : 0 < rest.prod := List.prod_pos fun r hr =>
    (hrestPrimes r hr).1.pos
  have hProductP : p * withoutP.prod = support.prod := by
    simpa [withoutP] using List.prod_erase hpSupport
  have hProductQ : q * rest.prod = withoutP.prod := by
    simpa [rest] using List.prod_erase hqWithoutP
  have hProductEq : support.prod = p * q * rest.prod := by
    calc
      support.prod = p * withoutP.prod := hProductP.symm
      _ = p * (q * rest.prod) := by rw [hProductQ]
      _ = p * q * rest.prod := by ring
  have hTooLarge : 27809 * 27810 <= support.prod := by
    rw [hProductEq]
    have hqLower : 27810 <= q := by omega
    calc
      27809 * 27810 <= p * q := Nat.mul_le_mul hpLower hqLower
      _ = p * q * 1 := by simp
      _ <= p * q * rest.prod := by
        exact Nat.mul_le_mul_left _
          (show 1 <= rest.prod from hrestPositive)
  norm_num at hTooLarge
  omega

theorem actualMixedSupport_dropLast_mem_fortyMillionWide
    {k : Nat} (support : List Nat)
    (hLength : support.length = k)
    (hPrimes : ∀ p, p ∈ support → FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (fun left right => left < right))
    (hProduct : support.prod < 200_000_000) :
    support.dropLast ∈ fortyMillionWideFeasiblePrefixesKernel k := by
  by_cases hkZero : k = 0
  · have hSupportLength : support.length = 0 := hLength.trans hkZero
    have hSupport : support = [] := by simpa using hSupportLength
    simp [hSupport, fortyMillionWideFeasiblePrefixesKernel, hkZero]
  have hSupport : support ≠ [] := by
    intro h
    subst support
    simp at hLength
    omega
  let supportPrefix := support.dropLast
  let q := support.getLast hSupport
  let qProxy := min q 27809
  let selected := supportPrefix ++ [qProxy]
  have hqMem : q ∈ support := List.getLast_mem hSupport
  have hqPrime : FiveMillionSupportPrime q := hPrimes q hqMem
  have hdecomp := List.dropLast_append_getLast hSupport
  have hprodEq := congrArg List.prod hdecomp
  simp only [List.prod_append, List.prod_cons, List.prod_nil, Nat.mul_one]
    at hprodEq
  have hPrefixLt : ∀ p, p ∈ supportPrefix → p < 27809 := by
    intro p hp
    exact mixedSupport_dropLast_lt_27809 support hLength hPrimes
      hIncreasing hProduct p hp
  have hqProxyPrime : FiveMillionSupportPrime qProxy := by
    dsimp [qProxy]
    by_cases hqUpper : q <= 27809
    · rw [min_eq_left hqUpper]
      exact hqPrime
    · rw [min_eq_right (by omega)]
      norm_num [FiveMillionSupportPrime]
  have hqProxyUpper : qProxy <= 27809 := min_le_right _ _
  have hPrefixPairwise : supportPrefix.Pairwise (fun left right => left < right) :=
    hIncreasing.sublist (fortyMillion_dropLast_sublist_self support)
  have hSelectedPairwise : selected.Pairwise (fun left right => left < right) := by
    rw [List.pairwise_append]
    refine ⟨hPrefixPairwise, by simp, ?_⟩
    intro p hp r hr
    simp only [List.mem_singleton] at hr
    subst r
    have hpq : p < q := hIncreasing.rel_dropLast_getLast hp
    exact lt_min hpq (hPrefixLt p hp)
  have hSubset : selected ⊆
      GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes := by
    intro p hp
    rcases List.mem_append.mp hp with hpPrefix | hpLast
    · exact GeneratedTailGlobalPureSupportCoverage.mem_kernelSupportPrimes_of_supportPrime
          (hPrimes p (List.dropLast_subset support hpPrefix))
          (Nat.le_of_lt (hPrefixLt p hpPrefix))
    · have hpEq : p = qProxy := by simpa using hpLast
      subst p
      exact GeneratedTailGlobalPureSupportCoverage.mem_kernelSupportPrimes_of_supportPrime
        hqProxyPrime hqProxyUpper
  have hSubperm : List.Subperm selected
      GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes :=
    List.subperm_of_subset hSelectedPairwise.nodup hSubset
  have hSublist : List.Sublist selected
      GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes :=
    List.sublist_of_subperm_of_pairwise hSubperm hSelectedPairwise
      GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes_pairwise_lt
  have hPrefixLength : supportPrefix.length = k - 1 := by
    dsimp [supportPrefix]
    simp [List.length_dropLast, hLength]
  have hSelectedLength : selected.length = (k - 1) + 1 := by
    simp [selected, hPrefixLength]
  have hSelectedProduct : selected.prod <= support.prod := by
    calc
      selected.prod = supportPrefix.prod * qProxy := by simp [selected]
      _ <= supportPrefix.prod * q := Nat.mul_le_mul_left _ (min_le_left _ _)
      _ = support.prod := hprodEq
  have hEnumerated := feasibleSupportPrefixes_complete
    (bound := 199_999_999) (need := k - 1) (product := 1)
    hSublist
    (GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes_pairwise_lt.imp
      fun h => Nat.le_of_lt h)
    hSelectedLength
    (by
      simpa using hSelectedProduct.trans (by omega : support.prod <= 199_999_999))
  have hTake : selected.take (k - 1) = supportPrefix := by
    simp [selected, hPrefixLength]
  simp only [fortyMillionWideFeasiblePrefixesKernel, dif_neg hkZero]
  simpa [hTake] using hEnumerated

theorem mem_globalMixedSupportPrimes_of_supportPrime_le_2843
    {p : Nat} (hp : FiveMillionSupportPrime p) (hpUpper : p ≤ 2843) :
    p ∈ GeneratedTailGlobalMixedSupportCoverage.mixedSupportPrimes := by
  have hpKernel := mem_globalMixedKernelSupportPrimes_of_supportPrime
    hp (hpUpper.trans (by norm_num))
  rw [globalMixedKernelSupportPrimes] at hpKernel
  rcases List.mem_append.mp hpKernel with hpMixed | hpSentinel
  · exact hpMixed
  · simp only [List.mem_singleton] at hpSentinel
    omega

theorem globalMixedExtension_supportPrime
    {q : Nat} (hq : FiveMillionSupportPrime q)
    (hqMem : q ∈
      GeneratedTailGlobalMixedSupportCoverage.mixedSupportPrimes) :
    FiveMillionSupportPrime
      (GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime q) := by
  by_cases hqThree : q = 3
  · subst q
    rw [GeneratedTailGlobalMixedSupportCoverage.mixedExtensionPrimeEq3]
    norm_num [FiveMillionSupportPrime]
  have hext :=
    GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime_semantic
      (Or.inr hqMem)
  have hqLower : 7 ≤ q := by
    have hqTwo := hq.1.two_le
    have hqNeTwo : q ≠ 2 := by
      intro h
      subst q
      norm_num [FiveMillionSupportPrime] at hq
    have hqNeFive := hq.2.2
    obtain ⟨half, hhalf⟩ := hq.2.1
    omega
  refine ⟨hext.1, hext.1.odd_of_ne_two (by omega), ?_⟩
  intro heq
  omega

theorem single_support_prefix_mem_global_of_le_2843
    {p : Nat} (hp : FiveMillionSupportPrime p) (hpUpper : p ≤ 2843) :
    [p] ∈ globalMixedFeasiblePrefixesKernel 2 := by
  let extension :=
    GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime p
  let selected := [p, extension]
  have hpMixed :=
    mem_globalMixedSupportPrimes_of_supportPrime_le_2843 hp hpUpper
  have hext :=
    GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime_semantic
      (Or.inr hpMixed)
  have hextPrime : FiveMillionSupportPrime extension := by
    dsimp [extension]
    exact globalMixedExtension_supportPrime hp hpMixed
  have hextUpper : extension ≤ 2851 := by
    dsimp [extension]
    exact hext.2.2 2851
      (by norm_num [FiveMillionSupportPrime]) (by omega)
  have hpKernel : p ∈ globalMixedKernelSupportPrimes := by
    exact mem_globalMixedKernelSupportPrimes_of_supportPrime
      hp (hpUpper.trans (by norm_num))
  have hextKernel : extension ∈ globalMixedKernelSupportPrimes := by
    exact mem_globalMixedKernelSupportPrimes_of_supportPrime
      hextPrime (hextUpper.trans (by norm_num))
  have hSelectedPairwise :
      selected.Pairwise (fun left right => left < right) := by
    simp [selected, extension, hext.2.1]
  have hSubset : selected ⊆ globalMixedKernelSupportPrimes := by
    intro value hvalue
    simp only [selected, List.mem_cons, List.not_mem_nil, or_false] at hvalue
    rcases hvalue with rfl | rfl
    · exact hpKernel
    · exact hextKernel
  have hSubperm : List.Subperm selected globalMixedKernelSupportPrimes :=
    List.subperm_of_subset hSelectedPairwise.nodup hSubset
  have hSublist : List.Sublist selected globalMixedKernelSupportPrimes :=
    List.sublist_of_subperm_of_pairwise hSubperm hSelectedPairwise
      globalMixedKernelSupportPrimes_pairwise_lt
  have hProduct : selected.prod ≤ 84_000_000 := by
    have hmul : p * extension ≤ 2843 * 2851 :=
      Nat.mul_le_mul hpUpper hextUpper
    simpa [selected] using hmul.trans (by norm_num)
  have hEnumerated := feasibleSupportPrefixes_complete
    (bound := 84_000_000) (need := 1) (product := 1)
    hSublist
    (globalMixedKernelSupportPrimes_pairwise_lt.imp
      fun h => Nat.le_of_lt h)
    (by simp [selected])
    (by simpa using hProduct)
  simpa [globalMixedFeasiblePrefixesKernel,
    globalMixedSupportProductThreshold, selected] using hEnumerated

theorem pair_support_prefix_mem_global_of_endpoint_le
    {p q : Nat}
    (hp : FiveMillionSupportPrime p)
    (hq : FiveMillionSupportPrime q)
    (hpq : p < q) (hqUpper : q ≤ 2843)
    (hEndpoint : p * q *
      GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime q ≤
        168_000_000) :
    [p, q] ∈ globalMixedFeasiblePrefixesKernel 3 := by
  let extension :=
    GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime q
  let selected := [p, q, extension]
  have hpUpper : p ≤ 2843 := by omega
  have hpMixed :=
    mem_globalMixedSupportPrimes_of_supportPrime_le_2843 hp hpUpper
  have hqMixed :=
    mem_globalMixedSupportPrimes_of_supportPrime_le_2843 hq hqUpper
  have hext :=
    GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime_semantic
      (Or.inr hqMixed)
  have hextPrime : FiveMillionSupportPrime extension := by
    dsimp [extension]
    exact globalMixedExtension_supportPrime hq hqMixed
  have hextUpper : extension ≤ 9161 := by
    dsimp [extension]
    exact hext.2.2 9161
      (by norm_num [FiveMillionSupportPrime]) (by omega)
  have hpKernel : p ∈ globalMixedKernelSupportPrimes := by
    exact mem_globalMixedKernelSupportPrimes_of_supportPrime hp
      (hpUpper.trans (by norm_num))
  have hqKernel : q ∈ globalMixedKernelSupportPrimes := by
    exact mem_globalMixedKernelSupportPrimes_of_supportPrime hq
      (hqUpper.trans (by norm_num))
  have hextKernel : extension ∈ globalMixedKernelSupportPrimes := by
    exact mem_globalMixedKernelSupportPrimes_of_supportPrime
      hextPrime hextUpper
  have hSelectedPairwise :
      selected.Pairwise (fun left right => left < right) := by
    simp [selected, extension, hpq, hext.2.1,
      hpq.trans hext.2.1]
  have hSubset : selected ⊆ globalMixedKernelSupportPrimes := by
    intro value hvalue
    simp only [selected, List.mem_cons, List.not_mem_nil, or_false] at hvalue
    rcases hvalue with rfl | rfl | rfl
    · exact hpKernel
    · exact hqKernel
    · exact hextKernel
  have hSubperm : List.Subperm selected globalMixedKernelSupportPrimes :=
    List.subperm_of_subset hSelectedPairwise.nodup hSubset
  have hSublist : List.Sublist selected globalMixedKernelSupportPrimes :=
    List.sublist_of_subperm_of_pairwise hSubperm hSelectedPairwise
      globalMixedKernelSupportPrimes_pairwise_lt
  have hEnumerated := feasibleSupportPrefixes_complete
    (bound := 168_000_000) (need := 2) (product := 1)
    hSublist
    (globalMixedKernelSupportPrimes_pairwise_lt.imp
      fun h => Nat.le_of_lt h)
    (by simp [selected])
    (by simpa [selected, extension, Nat.mul_assoc] using hEndpoint)
  simpa [globalMixedFeasiblePrefixesKernel,
    globalMixedSupportProductThreshold, selected] using hEnumerated

theorem actualMixedSupport_dropLast_mem_global_or_supplemental
    {k : Nat} (hkLower : 2 <= k) (hkUpper : k <= 3)
    (support : List Nat)
    (hLength : support.length = k)
    (hPrimes : ∀ p, p ∈ support → FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (fun left right => left < right))
    (hProduct : support.prod < 200_000_000) :
    support.dropLast ∈ globalMixedFeasiblePrefixesKernel k ∨
      support.dropLast ∈ fortyMillionSupplementalFeasiblePrefixesKernel k := by
  by_cases hbase : support.dropLast ∈ globalMixedFeasiblePrefixesKernel k
  · exact Or.inl hbase
  · right
    have hwide := actualMixedSupport_dropLast_mem_fortyMillionWide support
      hLength hPrimes hIncreasing hProduct
    have hk : k = 2 ∨ k = 3 := by omega
    simp [fortyMillionSupplementalFeasiblePrefixesKernel, hk, hwide, hbase]

#print axioms actualMixedSupport_dropLast_mem_fortyMillionWide
#print axioms mem_globalMixedSupportPrimes_of_supportPrime_le_2843
#print axioms globalMixedExtension_supportPrime
#print axioms single_support_prefix_mem_global_of_le_2843
#print axioms pair_support_prefix_mem_global_of_endpoint_le
#print axioms actualMixedSupport_dropLast_mem_global_or_supplemental

end Erdos848
