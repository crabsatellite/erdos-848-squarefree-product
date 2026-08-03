import Erdos848.TailR263EvenOneExhaustion
import Erdos848.TailR263OddTwoExhaustion
import Erdos848.TailGlobalMixedResidual

namespace Erdos848

/-!
# Complete R263 allocation at the five-million endpoint

This is the complete case analysis for the R263 cut.  A strict Hall defect
first gives more than 19046 residual points.  The five valuation rows are
then exhausted in order.  Every branch either produces a kernel-checked
terminal certificate or supplies the exact cardinality charge consumed by
the next row.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem fiveMillionR263BranchExhaustion_kernel
    [E1Finite23SharpCertificate] :
    ∀ N, 5_000_000 ≤ N → N < 10_000_000 →
      ∀ B : Finset Nat, Erdos848OutsideSet N B →
        NonSquarefreeProductProp B →
        (OriginalA7 N).card <
          B.card + (hallNonNeighbours N B).card →
        Nonempty (FiveMillionR263KernelTerminal N B) := by
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

theorem erdos848FiveToTenMillionClose
    [E1Finite23SharpCertificate] :
    ∀ N, 5_000_000 <= N -> N < 10_000_000 ->
      OriginalProblem848Statement N := by
  intro N hLower hUpper
  apply originalProblem_of_hallStatement
  intro B hBout hBprop
  by_contra hnotHall
  have hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card := by omega
  obtain ⟨terminal⟩ :=
    fiveMillionR263BranchExhaustion_kernel
      N hLower hUpper B hBout hBprop hdefect
  have hcompletion :=
    terminal.completion_ratio_lt_target hLower hBprop
  have hHall := hall_bound_of_completion_ratio_le_tailTarget
    (lt_of_lt_of_le (by norm_num) hLower) hBout hcompletion.le
  omega

#print axioms fiveMillionR263BranchExhaustion_kernel
#print axioms erdos848FiveToTenMillionClose

end Erdos848
