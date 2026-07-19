import Erdos848.TailGlobalMixedEvenTerminalActualSound
import Erdos848.TailGlobalMixedEvenTerminal

namespace Erdos848

/-! Transport certified actual counts into the affine terminal checker. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem globalMixedEvenTerminalPrefixPasses_eq_countsPasses
    (k endpoint : Nat) (support : List Nat) :
    globalMixedEvenTerminalPrefixPasses k endpoint support =
      globalMixedEvenCountsPasses k endpoint
        (globalMixedEvenActualCounts support) := by
  unfold globalMixedEvenTerminalPrefixPasses
  unfold globalMixedEvenTerminalValuationPasses
  unfold globalMixedEvenCountsPasses
  unfold globalMixedEvenActualCounts
  unfold globalMixedCoreEvenCheckerCoefficient100
  unfold globalMixedCoreEvenCoefficient100
  unfold globalMixedEvenRootCoefficient100
  have hdiscount :
      globalMixedCoreLineDiscount endpoint =
        globalMixedLineDiscount endpoint := by
    rfl
  rw [hdiscount]
  unfold globalMixedLinePasses
  unfold globalMixedCoreLinePassesAt
  simp only [Bool.and_assoc]

theorem globalMixedEvenTerminalPrefixPasses_of_counts
    {k endpoint : Nat} {support : List Nat} {counts : GlobalMixedEvenCounts}
    (hactual : globalMixedEvenActualCounts support = counts)
    (hpass : globalMixedEvenCountsPasses k endpoint counts = true) :
    globalMixedEvenTerminalPrefixPasses k endpoint support = true := by
  rw [globalMixedEvenTerminalPrefixPasses_eq_countsPasses, hactual]
  exact hpass

#print axioms globalMixedEvenTerminalPrefixPasses_of_counts

end Erdos848
