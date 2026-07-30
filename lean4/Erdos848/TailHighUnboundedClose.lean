import Erdos848.TailHighUnboundedData
import Erdos848.TailHighUnboundedKernelCertificate
import Erdos848.TailTwentyMillionDegree19

namespace Erdos848

/-!
# Kernel close above the checked unbounded threshold

All analytic and structural estimates are semantic theorems.  The three
concrete checks below reduce exact natural and rational inequalities in the
kernel; no interval theorem or external oracle is stored in the data.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem erdos848HighUnboundedClose
    {N : Nat}
    (hLower : highUnboundedBudget.lower ≤ N) :
    OriginalProblem848Statement N := by
  apply originalProblem_of_hallStatement
  intro B hBout hBprop
  by_contra hnotHall
  have hdefect :
      (OriginalA7 N).card <
        B.card + (hallNonNeighbours N B).card := by
    omega
  have hTwenty : 20_000_000 ≤ N := by
    have hthreshold :
        20_000_000 ≤ highUnboundedBudget.lower := by
      norm_num [highUnboundedBudget]
    exact hthreshold.trans hLower
  obtain ⟨branch, hbranch⟩ :=
    exists_twentyMillionBranchApplies_global19
      hTwenty hBout hBprop hdefect
  have hRootLower :
      highUnboundedRootTerminal.lower ≤ N := by
    simpa [highUnboundedRootTerminal] using hLower
  have hterminal :
      HighKernelTerminalCertificate highUnboundedBudget N B :=
    highVariableKernelTerminalCertificate_of_branch
      highUnboundedRootTerminal highUnboundedBudget
      highUnboundedRootTerminal_checked hRootLower hTwenty
      (by
        intro branch
        cases branch <;>
          rfl)
      hBout hbranch
  have hbudgetSound :=
    highTenBranchBudgetPasses_sound highUnboundedBudget_checked
  have hdiagonal :
      ∀ selection : PaperDiagonalSelection,
        paperDiagonalRatio N selection ≤
          highUnboundedBudget.diagonal selection :=
    fun selection =>
      highUnboundedDiagonalTerminal.paperDiagonalRatio_le
        highUnboundedDiagonalTerminal_checked hLower selection
  obtain ⟨terminalBranch, hcompletion⟩ :=
    HighKernelTerminalCertificate.completion_ratio_le_total
      hbudgetSound.1 hLower hBout hBprop hdiagonal hterminal
  have htarget :
      ((hallCompletion N B).card : Rat) / N ≤
        twentyMillionHallTarget N := by
    exact hcompletion.trans <|
      (le_of_lt (hbudgetSound.2 terminalBranch)).trans <|
        HighTenBranchBudget.target_le_normalizedTarget
          hbudgetSound.1 hLower
  have hHall := twentyMillionHall_of_ratio_le_target
    (hbudgetSound.1.trans_le hLower) hBout htarget
  omega

#print axioms erdos848HighUnboundedClose

end Erdos848
