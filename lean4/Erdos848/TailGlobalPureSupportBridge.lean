import Erdos848.GeneratedTailGlobalPureSupportCoverage.Certificate
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainCertificate
import Erdos848.GeneratedTailGlobalPureSupportCoverage.MaskSemanticCertificate
import Erdos848.TailSupportEnumeration
import Erdos848.TailSupportProductEnvelope

namespace Erdos848

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-!
# Semantic bridge for the uniform pure-support certificate

The finite leaves use only the first eleven 64-bit words, exactly the words
needed for odd complementary quotients through `676`.  This file reconnects
that optimized representation to the already certified full QR masks.
-/

private lemma getD_take_eq_getD
    (values : List ℕ) (index count : ℕ) (hindex : index < count) :
    (values.take count).getD index 0 = values.getD index 0 := by
  by_cases hvalues : index < values.length
  · have htake : index < (values.take count).length := by
      simp only [List.length_take]
      omega
    rw [List.getD_eq_getElem _ _ htake, List.getD_eq_getElem _ _ hvalues]
    simp
  · have htake : (values.take count).length ≤ index := by
      simp only [List.length_take]
      omega
    rw [List.getD_eq_default _ _ htake,
      List.getD_eq_default _ _ (Nat.le_of_not_gt hvalues)]

private theorem dropLast_sublist_self {α : Type*} (values : List α) :
    List.Sublist values.dropLast values := by
  induction values with
  | nil => simp
  | cons value values ih =>
      cases values with
      | nil => simp
      | cons next rest =>
          simpa using ih.cons_cons value

theorem globalPureOddRootSupportWord_eq_certified
    (support : List ℕ) (squareCoset : Bool) (wordIndex : ℕ)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hUpper : globalPureSupportMaskUpper support = true)
    (hWord : wordIndex < 11) :
    globalPureOddRootSupportWord support squareCoset wordIndex =
      oddRootSupportWord support squareCoset wordIndex := by
  induction support with
  | nil => rfl
  | cons p support ih =>
      have hUpperParts :
          decide (p ≤ 3467) = true ∧
            support.all (fun q => decide (q ≤ 3467)) = true := by
        simpa only [globalPureSupportMaskUpper, List.all_cons,
          Bool.and_eq_true] using hUpper
      have hpUpper : p ≤ 3467 := of_decide_eq_true hUpperParts.1
      have hpPrime : FiveMillionSupportPrime p := hPrimes p (by simp)
      have hmask :=
        GeneratedTailGlobalPureSupportCoverage.supportQrMaskWords_eq_certified_take
          hpPrime (hpUpper.trans (by norm_num))
      rw [globalPureOddRootSupportWord, oddRootSupportWord, hmask,
        getD_take_eq_getD _ _ 11 hWord]
      rw [ih (fun q hq => hPrimes q (by simp [hq]))
        (by simpa [globalPureSupportMaskUpper] using hUpperParts.2)]

private theorem countGlobalPureOddRootWords_eq_certified
    (support : List ℕ) (squareCoset : Bool) (start count : ℕ)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hUpper : globalPureSupportMaskUpper support = true)
    (hRange : start + count ≤ 11) :
    countGlobalPureOddRootWords support squareCoset start count =
      countOddRootSupportOddWords support squareCoset start count := by
  induction count generalizing start with
  | zero => rfl
  | succ count ih =>
      rw [countGlobalPureOddRootWords, countOddRootSupportOddWords,
        globalPureOddRootSupportWord_eq_certified support squareCoset start
          hPrimes hUpper (by omega)]
      rw [ih (start := start + 1) (by omega)]

theorem globalPureOddRootSurvivorCount_eq_certified
    (support : List ℕ) (squareCoset : Bool)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hUpper : globalPureSupportMaskUpper support = true) :
    globalPureOddRootSurvivorCount support squareCoset =
      oddRootWordSurvivorCountThrough support squareCoset 676 := by
  unfold globalPureOddRootSurvivorCount oddRootWordSurvivorCountThrough
  norm_num only
  rw [countGlobalPureOddRootWords_eq_certified support squareCoset 0 10
      hPrimes hUpper (by norm_num),
    globalPureOddRootSupportWord_eq_certified support squareCoset 10
      hPrimes hUpper (by norm_num)]
  simp

theorem globalOddRootFeasiblePrefixes_pass
    {k : ℕ} (hk : k ≤ 8) :
    (globalOddRootFeasiblePrefixesKernel k).all
      (globalPureSupportPrefixPasses k) = true := by
  interval_cases k
  · exact GeneratedTailGlobalPureSupportCoverage.k0FeasiblePrefixes_pass
  · exact GeneratedTailGlobalPureSupportCoverage.k1FeasiblePrefixes_pass
  · exact GeneratedTailGlobalPureSupportCoverage.k2FeasiblePrefixes_pass
  · exact GeneratedTailGlobalPureSupportCoverage.k3FeasiblePrefixes_pass
  · exact GeneratedTailGlobalPureSupportCoverage.k4FeasiblePrefixes_pass
  · exact GeneratedTailGlobalPureSupportCoverage.k5FeasiblePrefixes_pass
  · exact GeneratedTailGlobalPureSupportCoverage.k6FeasiblePrefixes_pass
  · exact GeneratedTailGlobalPureSupportCoverage.k7FeasiblePrefixes_pass
  · exact GeneratedTailGlobalPureSupportCoverage.k8FeasiblePrefixes_pass

theorem globalOddRootFeasiblePrefixes_mask_upper
    {k : ℕ} (hk : k ≤ 8) :
    (globalOddRootFeasiblePrefixesKernel k).all
      globalPureSupportMaskUpper = true := by
  interval_cases k
  · exact GeneratedTailGlobalPureSupportCoverage.k0FeasiblePrefixes_mask_upper
  · exact GeneratedTailGlobalPureSupportCoverage.k1FeasiblePrefixes_mask_upper
  · exact GeneratedTailGlobalPureSupportCoverage.k2FeasiblePrefixes_mask_upper
  · exact GeneratedTailGlobalPureSupportCoverage.k3FeasiblePrefixes_mask_upper
  · exact GeneratedTailGlobalPureSupportCoverage.k4FeasiblePrefixes_mask_upper
  · exact GeneratedTailGlobalPureSupportCoverage.k5FeasiblePrefixes_mask_upper
  · exact GeneratedTailGlobalPureSupportCoverage.k6FeasiblePrefixes_mask_upper
  · exact GeneratedTailGlobalPureSupportCoverage.k7FeasiblePrefixes_mask_upper
  · exact GeneratedTailGlobalPureSupportCoverage.k8FeasiblePrefixes_mask_upper

theorem globalFeasiblePrefix_root_upper
    {k : ℕ} (hk : k ≤ 8) {supportPrefix : List ℕ}
    (hPrefix : supportPrefix ∈ globalOddRootFeasiblePrefixesKernel k)
    (squareCoset : Bool)
    (hPrimes : ∀ p ∈ supportPrefix, FiveMillionSupportPrime p) :
    globalPureRootUpperRow
        (globalPureSupportEndpoint supportPrefix)
        (globalPureSupportEndpoint supportPrefix / 26)
        (4 * 2 ^ (k + 1))
        (oddRootWordSurvivorCountThrough supportPrefix squareCoset 676) ≤
      pureFiveMillionRootEnvelope / 5_000_000 := by
  have hpass := (List.all_eq_true.mp
    (globalOddRootFeasiblePrefixes_pass hk)) supportPrefix hPrefix
  have hUpper := (List.all_eq_true.mp
    (globalOddRootFeasiblePrefixes_mask_upper hk)) supportPrefix hPrefix
  have hsound := globalPureSupportPrefixPasses_sound
    (squareCoset := squareCoset) hpass
  rw [← globalPureOddRootSurvivorCount_eq_certified
    supportPrefix squareCoset hPrimes hUpper]
  exact hsound

theorem globalPureSupportEndpoint_le
    {N : ℕ} (support : List ℕ)
    (hN : 5_000_000 ≤ N)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod ≤ N)
    (hUpper : globalPureSupportMaskUpper support.dropLast = true) :
    globalPureSupportEndpoint support.dropLast ≤ N := by
  unfold globalPureSupportEndpoint
  apply max_le hN
  by_cases hSupport : support = []
  · subst support
    change 3 ≤ N
    omega
  by_cases hPrefix : support.dropLast = []
  · rw [hPrefix]
    change 3 ≤ N
    omega
  let p := support.dropLast.getLast hPrefix
  let q := support.getLast hSupport
  have hpMemPrefix : p ∈ support.dropLast := by
    exact List.getLast_mem hPrefix
  have hpMem : p ∈ support := List.dropLast_subset support hpMemPrefix
  have hqMem : q ∈ support := List.getLast_mem hSupport
  have hpPrime : FiveMillionSupportPrime p := hPrimes p hpMem
  have hqPrime : FiveMillionSupportPrime q := hPrimes q hqMem
  have hpUpperDecide : decide (p ≤ 3467) = true := by
    have hall : support.dropLast.all (fun r => decide (r ≤ 3467)) = true := by
      simpa [globalPureSupportMaskUpper] using hUpper
    exact (List.all_eq_true.mp hall) p hpMemPrefix
  have hpUpper : p ≤ 3467 := of_decide_eq_true hpUpperDecide
  have hpq : p < q := by
    exact hIncreasing.rel_dropLast_getLast hpMemPrefix
  have hext :=
    GeneratedTailGlobalPureSupportCoverage.supportExtensionPrime_semantic
      hpPrime hpUpper
  have hextLe :
      GeneratedTailGlobalPureSupportCoverage.supportExtensionPrime p ≤ q :=
    hext.2.2 q hqPrime hpq
  have hdecomp := List.dropLast_append_getLast hSupport
  have hprodEq := congrArg List.prod hdecomp
  simp only [List.prod_append, List.prod_cons, List.prod_nil, Nat.mul_one]
    at hprodEq
  unfold globalPureSupportLowerProduct
  rw [List.getLast?_eq_getLast_of_ne_nil hPrefix]
  simp only [Option.getD_some]
  calc
    support.dropLast.prod *
          GeneratedTailGlobalPureSupportCoverage.supportExtensionPrime p ≤
        support.dropLast.prod * q := Nat.mul_le_mul_left _ hextLe
    _ = support.prod := hprodEq
    _ ≤ N := hProduct

theorem globalSupportPrimes_pairwise_lt :
    GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes.Pairwise (· < ·) := by
  exact GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes_pairwise_lt

theorem mem_globalSupportPrimes
    {p : ℕ} (hp : FiveMillionSupportPrime p) (hUpper : p ≤ 27809) :
    p ∈ GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes := by
  exact
    GeneratedTailGlobalPureSupportCoverage.mem_kernelSupportPrimes_of_supportPrime
      hp hUpper

theorem actualSupport_dropLast_mem_globalFeasible
    {k : ℕ} (hk : k ≤ 8) (support : List ℕ)
    (hLength : support.length = k)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hFinite : support.prod < globalPureSupportProductThreshold k) :
    support.dropLast ∈ globalOddRootFeasiblePrefixesKernel k := by
  by_cases hkZero : k = 0
  · have hSupportLength : support.length = 0 := hLength.trans hkZero
    have hSupport : support = [] := by simpa using hSupportLength
    simp [hSupport, globalOddRootFeasiblePrefixesKernel, hkZero]
  have hkPos : 0 < k := Nat.pos_of_ne_zero hkZero
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
  have hThresholdMax : globalPureSupportProductThreshold k ≤ 773_291_070 := by
    interval_cases k <;> norm_num [globalPureSupportProductThreshold]
  have hSupportMax : support.prod < 773_291_070 :=
    hFinite.trans_le hThresholdMax
  have hPrefixLtLimit : ∀ p ∈ supportPrefix, p < 27809 := by
    intro p hp
    have hpMemSupport : p ∈ support := List.dropLast_subset support hp
    have hpPos : 0 < p := (hPrimes p hpMemSupport).1.pos
    have hprefixPos : 0 < supportPrefix.prod := by
      apply List.prod_pos
      intro r hr
      exact (hPrimes r (List.dropLast_subset support hr)).1.pos
    have hpLeProd : p ≤ supportPrefix.prod :=
      Nat.le_of_dvd hprefixPos (List.dvd_prod hp)
    have hpq : p < q := hIncreasing.rel_dropLast_getLast hp
    by_contra hnot
    have hpLower : 27809 ≤ p := by omega
    have hqLower : 27810 ≤ q := by omega
    have hTooLarge : 27809 * 27810 ≤ support.prod := by
      calc
        27809 * 27810 ≤ p * q := Nat.mul_le_mul hpLower hqLower
        _ ≤ supportPrefix.prod * q := Nat.mul_le_mul_right q hpLeProd
        _ = support.prod := hprodEq
    norm_num at hTooLarge
    omega
  have hqProxyPrime : FiveMillionSupportPrime qProxy := by
    dsimp [qProxy]
    by_cases hqUpper : q ≤ 27809
    · rw [min_eq_left hqUpper]
      exact hqPrime
    · rw [min_eq_right (by omega)]
      norm_num [FiveMillionSupportPrime]
  have hqProxyUpper : qProxy ≤ 27809 := by
    exact min_le_right _ _
  have hPrefixPairwise : supportPrefix.Pairwise (· < ·) := by
    exact hIncreasing.sublist (dropLast_sublist_self support)
  have hSelectedPairwise : selected.Pairwise (· < ·) := by
    rw [List.pairwise_append]
    refine ⟨hPrefixPairwise, by simp, ?_⟩
    intro p hp r hr
    simp only [List.mem_singleton] at hr
    subst r
    have hpq : p < q := hIncreasing.rel_dropLast_getLast hp
    exact lt_min hpq (hPrefixLtLimit p hp)
  have hCandidatesPairwise :
      GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes.Pairwise (· < ·) :=
    globalSupportPrimes_pairwise_lt
  have hSubset : selected ⊆
      GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes := by
    intro p hp
    rcases List.mem_append.mp hp with hpPrefix | hpLast
    · exact mem_globalSupportPrimes
        (hPrimes p (List.dropLast_subset support hpPrefix))
        (Nat.le_of_lt (hPrefixLtLimit p hpPrefix))
    · have hpEq : p = qProxy := by simpa using hpLast
      subst p
      exact mem_globalSupportPrimes hqProxyPrime hqProxyUpper
  have hSubperm : List.Subperm selected
      GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes :=
    List.subperm_of_subset hSelectedPairwise.nodup hSubset
  have hSublist : List.Sublist selected
      GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes :=
    List.sublist_of_subperm_of_pairwise hSubperm hSelectedPairwise
      hCandidatesPairwise
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
    (bound := globalPureSupportProductThreshold k)
    (need := k - 1) (product := 1)
    hSublist (hCandidatesPairwise.imp fun h => Nat.le_of_lt h)
    hSelectedLength (by simpa using hSelectedProduct.trans (Nat.le_of_lt hFinite))
  have hTake : selected.take (k - 1) = supportPrefix := by
    simp [selected, hPrefixLength]
  simp only [globalOddRootFeasiblePrefixesKernel, dif_neg hkZero]
  simpa [hTake] using hEnumerated

theorem globalActualSupport_finite_root_upper
    {N : ℕ} (support : List ℕ) (squareCoset : Bool)
    (hN : 5_000_000 ≤ N)
    (hLength : support.length ≤ 8)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod ≤ N)
    (hFinite : support.prod <
      globalPureSupportProductThreshold support.length) :
    globalPureRootUpperRow N (N / 26)
        (4 * 2 ^ (support.length + 1))
        (oddRootWordSurvivorCountThrough
          support.dropLast squareCoset 676) ≤
      pureFiveMillionRootEnvelope / 5_000_000 := by
  have hPrefix := actualSupport_dropLast_mem_globalFeasible
    hLength support rfl hPrimes hIncreasing hFinite
  have hPrefixPrimes : ∀ p ∈ support.dropLast, FiveMillionSupportPrime p := by
    intro p hp
    exact hPrimes p (List.dropLast_subset support hp)
  have hCertificate := globalFeasiblePrefix_root_upper
    hLength hPrefix squareCoset hPrefixPrimes
  have hMask := (List.all_eq_true.mp
    (globalOddRootFeasiblePrefixes_mask_upper hLength))
      support.dropLast hPrefix
  have hEndpointLe := globalPureSupportEndpoint_le support hN hPrimes
    hIncreasing hProduct hMask
  have hSplitLe : globalPureSupportEndpoint support.dropLast / 26 ≤ N / 26 :=
    Nat.div_le_div_right hEndpointLe
  have hMono := globalPureRootUpperRow_antitone
    (height := 4 * 2 ^ (support.length + 1))
    (survivors := oddRootWordSurvivorCountThrough
      support.dropLast squareCoset 676)
    (globalPureSupportEndpoint_pos support.dropLast)
    (globalPureSupportEndpoint_split_pos support.dropLast)
    hEndpointLe hSplitLe
  exact hMono.trans hCertificate

#print axioms globalPureOddRootSurvivorCount_eq_certified
#print axioms globalOddRootFeasiblePrefixes_pass
#print axioms globalOddRootFeasiblePrefixes_mask_upper
#print axioms globalFeasiblePrefix_root_upper
#print axioms globalPureSupportEndpoint_le
#print axioms actualSupport_dropLast_mem_globalFeasible
#print axioms globalActualSupport_finite_root_upper

end Erdos848
