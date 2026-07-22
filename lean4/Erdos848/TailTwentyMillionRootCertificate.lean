import Erdos848.GeneratedTailTwentyMillionRootCoverage.Certificate
import Erdos848.TailTwentyMillionRootHighCount

namespace Erdos848

/-!
# Certified actual-prefix entry point for the twenty-million root table

The Python generator is not in the trust boundary.  This theorem starts with
an arbitrary actual Hall pivot and obtains the two checked QR lookups and all
facts needed by the semantic high-tail proof.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem actualTwentyMillionRootPrefix_certified
    {N : Nat} {B : Finset Nat} {pivot : Nat}
    (hUpper : N < 40_000_000)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B) :
    ∃ normalLookup twistLookup : Nat → List Nat,
      (∀ q ∈ (fiveMillionPivotSupport pivot).dropLast,
        twentyMillionRootMaskPassesWith
          normalLookup twistLookup q = true) ∧
      twentyMillionRootCorePrefixPasses
        normalLookup twistLookup
        GeneratedTailTwentyMillionRootCoverage.rootBaseWords
        (fiveMillionPivotSupport pivot).length
        (fiveMillionPivotSupport pivot).dropLast = true ∧
      (∀ q ∈ (fiveMillionPivotSupport pivot).dropLast,
        q ≤ twentyMillionRootNormalMaskBound) := by
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotBounds := hallCompletion_subset_Icc hBout hpivotCompletion
  have hProduct :
      (fiveMillionPivotSupport pivot).prod < 40_000_000 :=
    (fiveMillionPivotSupport_prod_le
      (Finset.mem_Icc.mp hpivotBounds).1
      (Finset.mem_Icc.mp hpivotBounds).2).trans_lt hUpper
  have hk :=
    actualTwentyMillionPivotSupport_length_le_seven
      hUpper hBout hpivotResidual
  have hmem :=
    actualTwentyMillionSupport_dropLast_mem_rootFeasible
      hk (fiveMillionPivotSupport pivot) rfl
      (fiveMillionPivotSupport_primes pivot)
      (fiveMillionPivotSupport_increasing pivot) hProduct
  obtain ⟨normalLookup, twistLookup, hmask, hpass⟩ :=
    GeneratedTailTwentyMillionRootCoverage.rootPrefix_certified_of_mem
      hk hmem
  refine ⟨normalLookup, twistLookup, hmask, hpass, ?_⟩
  intro q hq
  exact Nat.le_of_lt
    (actualTwentyMillionSupport_dropLast_lt_normalMaskBound
      hk (fiveMillionPivotSupport pivot) rfl
      (fiveMillionPivotSupport_primes pivot)
      (fiveMillionPivotSupport_increasing pivot)
      hProduct q hq)

#print axioms actualTwentyMillionRootPrefix_certified

end Erdos848
