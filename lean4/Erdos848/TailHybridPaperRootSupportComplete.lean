import Erdos848.TailHybridPaperRootData
import Erdos848.GeneratedHybridPaperSupportDomainCoverage.Certificate

namespace Erdos848

/-!
# Structural completeness of the hybrid paper root scans

The generated root scans stop at the support-prime sentinel `44729`.  This
module proves that every actual increasing support of length at most eight
and product below the active paper block has a table-supported proxy.  The
last prime is used only as the extension witness required by
`feasibleSupportPrefixes`; all QR intersections use `support.dropLast`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private theorem hybrid_dropLast_sublist_self {α : Type*}
    (values : List α) : List.Sublist values.dropLast values := by
  induction values with
  | nil => simp
  | cons value values ih =>
      cases values with
      | nil => simp
      | cons next rest => simpa using ih.cons_cons value

private theorem hybrid_three_pow_length_le_prod
    (support : List Nat)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p) :
    3 ^ support.length ≤ support.prod := by
  induction support with
  | nil => simp
  | cons p support ih =>
      have hpData := hPrimes p (by simp)
      have hpLower : 3 ≤ p := by
        have hpTwo : 2 ≤ p := hpData.1.two_le
        have hpNotTwo : p ≠ 2 := by
          intro hpEq
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

private theorem supportPrime_ge_44741_of_gt_44729
    {q : Nat} (hq : FiveMillionSupportPrime q) (hLower : 44729 < q) :
    44741 ≤ q := by
  by_contra hnot
  have hUpper : q ≤ 44740 := by omega
  interval_cases q <;> norm_num [FiveMillionSupportPrime] at hq

theorem HybridPaperDiagonalRegime.stop_le_twoBillion
    (regime : HybridPaperDiagonalRegime) :
    regime.stop ≤ 2_000_000_000 := by
  cases regime <;> norm_num [HybridPaperDiagonalRegime.stop]

/-- Every retained support prime is strictly below the extension sentinel.
If a retained prime were at least `44729`, the final support prime would be
at least `44741`, and those two factors alone already exceed two billion. -/
theorem hybridPaperSupport_dropLast_lt_44729
    {regime : HybridPaperDiagonalRegime} {k : Nat}
    (hk : k ≤ 8) (support : List Nat)
    (hLength : support.length = k)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hFinite : support.prod < regime.stop) :
    ∀ p ∈ support.dropLast, p < 44729 := by
  intro p hpPrefix
  by_contra hpNot
  have hpLower : 44729 ≤ p := by omega
  have hpSupport : p ∈ support :=
    List.dropLast_subset support hpPrefix
  have hSupport : support ≠ [] := List.ne_nil_of_mem hpSupport
  let q := support.getLast hSupport
  have hqSupport : q ∈ support := List.getLast_mem hSupport
  have hpq : p < q := hIncreasing.rel_dropLast_getLast hpPrefix
  have hqLower : 44741 ≤ q :=
    supportPrime_ge_44741_of_gt_44729
      (hPrimes q hqSupport) (hpLower.trans_lt hpq)
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
    hybrid_three_pow_length_le_prod rest hrestPrimes
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
  have hDropNonempty : support.dropLast ≠ [] :=
    List.ne_nil_of_mem hpPrefix
  have hkTwo : 2 ≤ k := by
    have hDropLength : 0 < support.dropLast.length := by
      cases hdrop : support.dropLast with
      | nil => exact (hDropNonempty hdrop).elim
      | cons _ _ => simp
    simp [List.length_dropLast, hLength] at hDropLength
    omega
  have hThresholdStrict :
      2_000_000_000 <
        44729 * 44741 * 3 ^ (k - 2) := by
    interval_cases k <;> norm_num
  have hProductLower :
      44729 * 44741 * 3 ^ (k - 2) ≤ support.prod := by
    rw [hProductEq]
    exact Nat.mul_le_mul (Nat.mul_le_mul hpLower hqLower)
      (by simpa [hRestLength] using hrestPower)
  have hStop := regime.stop_le_twoBillion
  omega

/-- Every actual support prefix used by the hybrid paper root bound occurs
in the complete generated enumeration. -/
theorem actualHybridPaperSupport_dropLast_mem_feasible
    {regime : HybridPaperDiagonalRegime} {k : Nat}
    (hk : k ≤ 8) (support : List Nat)
    (hLength : support.length = k)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hFinite : support.prod < regime.stop) :
    support.dropLast ∈
      feasibleSupportPrefixes regime.stop (k - 1) 1
        Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes := by
  by_cases hkZero : k = 0
  · have hSupportLength : support.length = 0 := hLength.trans hkZero
    have hSupport : support = [] := by simpa using hSupportLength
    subst support
    subst k
    have hEmpty :=
      feasibleSupportPrefixes_complete
        (bound := regime.stop) (need := 0) (product := 1)
        (selected := [3])
        (candidates :=
          Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes)
        ((List.singleton_sublist).2
          (by
            simp [Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes]))
        (Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes_pairwise_lt.imp
          Nat.le_of_lt)
        (by simp)
        (by
          cases regime <;>
            norm_num [HybridPaperDiagonalRegime.stop])
    simpa using hEmpty
  have hSupport : support ≠ [] := by
    intro h
    subst support
    simp at hLength
    omega
  let supportPrefix := support.dropLast
  let q := support.getLast hSupport
  let qProxy := min q 44729
  let selected := supportPrefix ++ [qProxy]
  have hqMem : q ∈ support := List.getLast_mem hSupport
  have hqPrime : FiveMillionSupportPrime q := hPrimes q hqMem
  have hdecomp := List.dropLast_append_getLast hSupport
  have hprodEq := congrArg List.prod hdecomp
  simp only [List.prod_append, List.prod_cons, List.prod_nil, Nat.mul_one]
    at hprodEq
  have hPrefixLtLimit : ∀ p ∈ supportPrefix, p < 44729 := by
    intro p hp
    exact hybridPaperSupport_dropLast_lt_44729
      hk support hLength hPrimes hIncreasing hFinite p hp
  have hqProxyPrime : FiveMillionSupportPrime qProxy := by
    dsimp [qProxy]
    by_cases hqUpper : q ≤ 44729
    · rw [min_eq_left hqUpper]
      exact hqPrime
    · rw [min_eq_right (by omega)]
      norm_num [FiveMillionSupportPrime]
  have hqProxyUpper : qProxy ≤ 44729 := min_le_right _ _
  have hPrefixPairwise : supportPrefix.Pairwise (· < ·) :=
    hIncreasing.sublist (hybrid_dropLast_sublist_self support)
  have hSelectedPairwise : selected.Pairwise (· < ·) := by
    rw [List.pairwise_append]
    refine ⟨hPrefixPairwise, by simp, ?_⟩
    intro p hp r hr
    simp only [List.mem_singleton] at hr
    subst r
    have hpq : p < q := hIncreasing.rel_dropLast_getLast hp
    exact lt_min hpq (hPrefixLtLimit p hp)
  have hSubset :
      selected ⊆
        Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes := by
    intro p hp
    rcases List.mem_append.mp hp with hpPrefix | hpLast
    · exact
        Erdos848.GeneratedHybridPaperSupportDomainCoverage.mem_rootSupportPrimes_of_supportPrime
            (hPrimes p (List.dropLast_subset support hpPrefix))
            (Nat.le_of_lt (hPrefixLtLimit p hpPrefix))
    · have hpEq : p = qProxy := by simpa using hpLast
      subst p
      exact
        Erdos848.GeneratedHybridPaperSupportDomainCoverage.mem_rootSupportPrimes_of_supportPrime
          hqProxyPrime hqProxyUpper
  have hSubperm :
      List.Subperm selected
        Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes :=
    List.subperm_of_subset hSelectedPairwise.nodup hSubset
  have hSublist :
      List.Sublist selected
        Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes :=
    List.sublist_of_subperm_of_pairwise hSubperm hSelectedPairwise
      Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes_pairwise_lt
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
    (bound := regime.stop) (need := k - 1) (product := 1)
    hSublist
    (Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes_pairwise_lt.imp
      Nat.le_of_lt)
    hSelectedLength
    (by simpa using hSelectedProduct.trans (Nat.le_of_lt hFinite))
  have hTake : selected.take (k - 1) = supportPrefix := by
    simp [selected, hPrefixLength]
  simpa [hTake] using hEnumerated

/-- Generic kernel consumer for a checked root lookup.  This theorem is shared
by the ordinary and five-twist certificates; only the finite Boolean scan
differs between them. -/
theorem hybridPaperActualSupportWords_count_le_target_of_scan
    (normalProvider : HybridPaperRootCertificateProvider)
    (regime : HybridPaperDiagonalRegime) (squareCoset : Bool)
    (lookup : Nat → List Nat) (support : List Nat)
    (hscan :
      ∀ {k : Nat}, 3 ≤ k → k ≤ 8 →
        hybridPaperRootScanPasses
          lookup (regime.rootTarget k) regime.stop
          (k - 1) 1
          Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes
          (regime.rootBaseWords squareCoset) = true)
    (hLength : support.length ≤ 8)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hFinite : support.prod < regime.stop) :
    globalMixedCoreCountWords
        (hybridPaperRootSupportWords lookup support.dropLast
          (regime.rootBaseWords squareCoset)) ≤
      regime.rootTarget support.length := by
  by_cases hSmall : support.length ≤ 2
  · exact
      (hybridPaperRootSupportWords_count_le
        lookup support.dropLast
        (regime.rootBaseWords squareCoset)
        (normalProvider.baseWords_lt regime squareCoset)).trans
        (regime.rootSmallTarget_covers
          normalProvider squareCoset hSmall)
  have hLower : 3 ≤ support.length := by omega
  have hEnumerated :=
    actualHybridPaperSupport_dropLast_mem_feasible
      (regime := regime) hLength support rfl hPrimes hIncreasing hFinite
  exact
    hybridPaperRootScanPasses_sound
      lookup (regime.rootTarget support.length) regime.stop
      (support.length - 1) 1
      Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes
      (regime.rootBaseWords squareCoset)
      (normalProvider.baseWords_lt regime squareCoset)
      (hscan hLower hLength)
      support.dropLast hEnumerated

/-- Kernel consumer for the generated ordinary root scan. -/
theorem hybridPaperActualSupportWords_count_le_target
    (normalProvider : HybridPaperRootCertificateProvider)
    (regime : HybridPaperDiagonalRegime) (squareCoset : Bool)
    (support : List Nat)
    (hLength : support.length ≤ 8)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hFinite : support.prod < regime.stop) :
    globalMixedCoreCountWords
        (hybridPaperRootSupportWords regime.rootLookup support.dropLast
          (regime.rootBaseWords squareCoset)) ≤
      regime.rootTarget support.length := by
  exact hybridPaperActualSupportWords_count_le_target_of_scan
    normalProvider regime squareCoset regime.rootLookup support
    (fun hLower hUpper =>
      regime.rootScanPasses normalProvider squareCoset
        hLower hUpper)
    hLength hPrimes hIncreasing hFinite

#print axioms hybridPaperSupport_dropLast_lt_44729
#print axioms actualHybridPaperSupport_dropLast_mem_feasible
#print axioms hybridPaperActualSupportWords_count_le_target_of_scan
#print axioms hybridPaperActualSupportWords_count_le_target

end Erdos848
