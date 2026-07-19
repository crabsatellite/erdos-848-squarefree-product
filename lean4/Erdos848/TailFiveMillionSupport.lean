import Erdos848.GeneratedTailSupportCoverage.Certificate

namespace Erdos848

/-!
## Exact support maximum in the controlling odd root row

The generated certificate covers the producer's complete pruned search of
four-prime prefixes which admit a fifth larger prime under the ten-million
product bound.  Both nonzero mod-five square cosets are checked.
-/

theorem fiveMillionOddRoot_feasible_support_bound
    {support : List ℕ}
    (hSupport : support ∈ fiveMillionOddRootFeasiblePrefixes) :
    oddRootWordSurvivorCount support true ≤ 70 ∧
      oddRootWordSurvivorCount support false ≤ 70 := by
  have hpass := (List.all_eq_true.mp
    GeneratedTailSupportCoverage.feasibleSupportPrefixes_pass)
    support hSupport
  simpa [fiveMillionOddRootPrefixMaskPasses] using hpass

set_option maxRecDepth 1000000 in
theorem fiveMillionOddRoot_witness_feasible :
    [13, 23, 29, 31] ∈ fiveMillionOddRootFeasiblePrefixes := by
  decide

theorem fiveMillionOddRoot_support_maximum_attained :
    oddRootWordSurvivorCount [13, 23, 29, 31] true = 70 ∧
      (∀ support ∈ fiveMillionOddRootFeasiblePrefixes,
        oddRootWordSurvivorCount support true ≤ 70 ∧
        oddRootWordSurvivorCount support false ≤ 70) := by
  constructor
  · exact fiveMillionOddRoot_witness_mask_support_exact
  · intro support hSupport
    exact fiveMillionOddRoot_feasible_support_bound hSupport

#print axioms fiveMillionOddRoot_feasible_support_bound
#print axioms fiveMillionOddRoot_support_maximum_attained

end Erdos848
