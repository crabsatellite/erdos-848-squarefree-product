import Erdos848.TailR263EvenOneExhaustion
import Erdos848.TailR263OddTwoExhaustion
import Erdos848.TailGlobalMixedResidual

namespace Erdos848

/-!
# Complete R263 allocation at the five-million endpoint

This is the root dispatcher for the unchanged R263 cut.  A strict Hall defect
first gives more than 19046 actual residual points.  The five valuation rows
are then exhausted in order.  Every branch either produces a literal
kernel-checked terminal certificate or supplies the exact small cardinality
charge consumed by the next row.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem fiveMillionR263BranchExhaustion_kernel :
    FiveMillionR263BranchExhaustion := by
  intro N hLower hUpper B hBout hBprop hdefect
  have hresidual :
      128 < (hallResidual N B).card := by
    exact (by
      have hlarge :=
        globalMixedHallResidual_card_gt_19046_of_defect
          hLower hBout hBprop hdefect
      omega)
  rcases fiveMillionR263EvenOne_exhaustion
      hLower hUpper hBout hBprop with hterminal | hOne
  · exact hterminal
  rcases fiveMillionR263EvenThree_exhaustion
      hLower hUpper hBout hBprop hOne with hterminal | hEven
  · exact hterminal
  rcases fiveMillionR263OddAllocation_exhaustion
      hLower hUpper hBout hBprop hOne hEven.1 hEven.2 hresidual with
      hterminal | hOdd
  · exact hterminal
  exact fiveMillionR263OddTwo_exhaustion
    hLower hUpper hBout hBprop hOne hEven.1 hEven.2 hOdd.1 hOdd.2

theorem erdos848FiveToTenMillionClose :
    ∀ N, 5_000_000 <= N -> N < 10_000_000 ->
      OriginalProblem848Statement N :=
  erdos848FiveToTenMillionClose_of_R263BranchExhaustion
    fiveMillionR263BranchExhaustion_kernel

#print axioms fiveMillionR263BranchExhaustion_kernel
#print axioms erdos848FiveToTenMillionClose

end Erdos848
