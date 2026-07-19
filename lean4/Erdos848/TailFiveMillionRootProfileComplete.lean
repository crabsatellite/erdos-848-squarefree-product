import Erdos848.TailSupportEnumeration
import Erdos848.TailFiveMillionRootProfileKernel

namespace Erdos848

/-! ## Structural completion of the five-million root profile -/

private theorem dropLast_sublist_self {α : Type*} (values : List α) :
    List.Sublist values.dropLast values := by
  induction values with
  | nil => simp
  | cons value values ih =>
      cases values with
      | nil => simp
      | cons next rest =>
          simpa using ih.cons_cons value

/-- Every nonempty increasing support under the ten-million product bound has
a table-supported proxy of the same length.  Its final prime is used only as
an extension witness; if the true final prime exceeds the table, the sentinel
`3163` replaces it and can only decrease the product. -/
theorem fiveMillionSupport_dropLast_mem_feasiblePrefixes
    {support : List ℕ} (hNonempty : support ≠ [])
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod ≤ 10_000_000) :
    support.dropLast ∈
      feasibleSupportPrefixes 10_000_000 (support.length - 1) 1
        GeneratedTailSupportCoverage.supportPrimes := by
  let q := support.getLast hNonempty
  let r := if q ≤ 3163 then q else 3163
  let proxy := support.dropLast ++ [r]
  have hqMem : q ∈ support := by
    exact List.getLast_mem hNonempty
  have hqPrime : FiveMillionSupportPrime q := hPrimes q hqMem
  have hrPrime : FiveMillionSupportPrime r := by
    dsimp [r]
    split_ifs with hqUpper
    · exact hqPrime
    · norm_num [FiveMillionSupportPrime]
  have hrLeQ : r ≤ q := by
    dsimp [r]
    split_ifs with hqUpper
    · exact le_rfl
    · omega
  have hDecomposition : support.dropLast ++ [q] = support := by
    exact List.dropLast_append_getLast hNonempty
  have hProductDecomposition : support.dropLast.prod * q ≤ 10_000_000 := by
    rw [← hDecomposition] at hProduct
    simpa [List.prod_append] using hProduct
  have hDropPrime :
      ∀ p ∈ support.dropLast, FiveMillionSupportPrime p := by
    intro p hp
    apply hPrimes p
    rw [← hDecomposition]
    simp [hp]
  have hDropOne : ∀ p ∈ support.dropLast, 1 ≤ p := by
    intro p hp
    exact (hDropPrime p hp).1.one_le
  have hDropLtQ : ∀ p ∈ support.dropLast, p < q := by
    intro p hp
    exact hIncreasing.rel_dropLast_getLast hp
  have hDropLe3137 : ∀ p ∈ support.dropLast, p ≤ 3137 := by
    intro p hp
    have hpLeDropProduct : p ≤ support.dropLast.prod := by
      have hSingleton : List.Sublist [p] support.dropLast := by
        simpa using (List.singleton_sublist.mpr hp)
      simpa using hSingleton.prod_le_prod' hDropOne
    have hpqProduct : p * q ≤ 10_000_000 := by
      exact (Nat.mul_le_mul_right q hpLeDropProduct).trans hProductDecomposition
    exact supportPrime_left_le_3137 (hDropPrime p hp) (hDropLtQ p hp) hpqProduct
  have hDropLtR : ∀ p ∈ support.dropLast, p < r := by
    intro p hp
    dsimp [r]
    split_ifs with hqUpper
    · exact hDropLtQ p hp
    · have := hDropLe3137 p hp
      omega
  have hProxySubset :
      proxy ⊆ GeneratedTailSupportCoverage.supportPrimes := by
    intro p hp
    simp only [proxy, List.mem_append, List.mem_singleton] at hp
    rcases hp with hp | rfl
    · exact mem_supportPrimes_of_supportPrime_le_3163
        (hDropPrime p hp) (by have := hDropLe3137 p hp; omega)
    · exact mem_supportPrimes_of_supportPrime_le_3163 hrPrime (by
        dsimp [r]
        split_ifs <;> omega)
  have hProxyPairwise : proxy.Pairwise (· < ·) := by
    have hDropSublist : List.Sublist support.dropLast support :=
      dropLast_sublist_self support
    have hDropPairwise := hIncreasing.sublist hDropSublist
    dsimp [proxy]
    rw [List.pairwise_append]
    refine ⟨hDropPairwise, by simp, ?_⟩
    intro p hp last hlast
    have hlastEq : last = r := by simpa using hlast
    subst last
    exact hDropLtR p hp
  have hProxySublist :
      List.Sublist proxy GeneratedTailSupportCoverage.supportPrimes := by
    exact List.sublist_of_subperm_of_pairwise
      (hProxyPairwise.nodup.subperm hProxySubset)
      hProxyPairwise supportPrimes_pairwise_lt
  have hProxyProduct : proxy.prod ≤ support.prod := by
    have hMul := Nat.mul_le_mul_left support.dropLast.prod hrLeQ
    rw [← hDecomposition]
    simpa [proxy, List.prod_append] using hMul
  have hDropLength : support.dropLast.length + 1 = support.length := by
    have hLengths := congrArg List.length hDecomposition
    simpa using hLengths
  have hProxyLength : proxy.length = (support.length - 1) + 1 := by
    simp only [proxy, List.length_append, List.length_singleton]
    omega
  have hProxyTake :
      proxy.take (support.length - 1) = support.dropLast := by
    have hNeed : support.length - 1 = support.dropLast.length := by omega
    rw [hNeed]
    simp [proxy]
  have hPairwiseLe :
      GeneratedTailSupportCoverage.supportPrimes.Pairwise (· ≤ ·) :=
    supportPrimes_pairwise_lt.imp Nat.le_of_lt
  have hProxyBound : proxy.prod ≤ 10_000_000 := hProxyProduct.trans hProduct
  have hEnumerated := feasibleSupportPrefixes_complete
    (bound := 10_000_000) (need := support.length - 1) (product := 1)
    (selected := proxy)
    (candidates := GeneratedTailSupportCoverage.supportPrimes)
    hProxySublist hPairwiseLe hProxyLength (by simpa using hProxyBound)
  rwa [hProxyTake] at hEnumerated

/-- The seven certified rows are structurally exhaustive for every actual
increasing non-five odd-prime support under the ten-million product bound. -/
theorem fiveMillionOddRootSupport_profileCase
    {support : List ℕ}
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod ≤ 10_000_000) :
    FiveMillionOddRootProfileCase support.length support.dropLast := by
  by_cases hEmpty : support = []
  · subst support
    exact FiveMillionOddRootProfileCase.k0
  have hEnumerated := fiveMillionSupport_dropLast_mem_feasiblePrefixes
    hEmpty hPrimes hIncreasing hProduct
  have hLength := supportPrimeList_length_le_six hPrimes hIncreasing hProduct
  have hCases :
      support.length = 0 ∨ support.length = 1 ∨ support.length = 2 ∨
      support.length = 3 ∨ support.length = 4 ∨ support.length = 5 ∨
      support.length = 6 := by
    omega
  rcases hCases with h0 | h1 | h2 | h3 | h4 | h5 | h6
  · exact (hEmpty (List.length_eq_zero_iff.mp h0)).elim
  · have hDrop : support.dropLast = [] := by
      apply List.length_eq_zero_iff.mp
      simp [h1]
    rw [h1, hDrop]
    exact FiveMillionOddRootProfileCase.k1
  · rw [h2]
    apply FiveMillionOddRootProfileCase.k2
    simpa [fiveMillionOddRootK2FeasiblePrefixes, h2] using hEnumerated
  · rw [h3]
    apply FiveMillionOddRootProfileCase.k3
    simpa [fiveMillionOddRootK3FeasiblePrefixes, h3] using hEnumerated
  · rw [h4]
    apply FiveMillionOddRootProfileCase.k4
    simpa [fiveMillionOddRootK4FeasiblePrefixes, h4] using hEnumerated
  · rw [h5]
    apply FiveMillionOddRootProfileCase.k5
    simpa [fiveMillionOddRootFeasiblePrefixes, h5] using hEnumerated
  · rw [h6]
    apply FiveMillionOddRootProfileCase.k6
    simpa [fiveMillionOddRootK6FeasiblePrefixes, h6] using hEnumerated

/-- Unconditional root-profile bound for an actual support list.  The final
support prime is deliberately discarded from the QR mask and retained only as
the product-bound extension witness, so this is an upper bound in the correct
direction rather than a transferred cut. -/
theorem fiveMillionOddRootSupport_kernel_close
    (N : ℕ) (support : List ℕ) (squareCoset : Bool)
    (hLower : 5_000_000 ≤ N) (hUpper : N < 10_000_000)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hProduct : support.prod ≤ 10_000_000) :
    transformedRootRow N (N / 49)
        (Nat.primeCounting (N / 49) - 4) (2 ^ (support.length + 1))
        (oddRootWordSurvivorCount support.dropLast squareCoset) ≤
      fiveMillionOddRoot7Envelope := by
  exact fiveMillionOddRootProfile_kernel_close
    N support.length support.dropLast squareCoset hLower hUpper
    (fiveMillionOddRootSupport_profileCase hPrimes hIncreasing hProduct)

#print axioms fiveMillionSupport_dropLast_mem_feasiblePrefixes
#print axioms fiveMillionOddRootSupport_profileCase
#print axioms fiveMillionOddRootSupport_kernel_close

end Erdos848
