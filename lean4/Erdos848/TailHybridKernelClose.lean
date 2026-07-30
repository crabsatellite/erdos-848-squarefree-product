import Erdos848.TailHybridKernelCertificate
import Erdos848.PaperHighRangeCore
import Erdos848.TailTwentyMillionDegree19

namespace Erdos848

/-!
# Kernel close of `200M ≤ N < 2B` from finite providers

No theorem about this interval is a certificate field.  The only inputs are
the finite normal/twist word tables and the finite root-envelope rows.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem erdos848PaperTwoHundredMillionToTwoBillionClose_of_certificates
    (normalProvider : HybridPaperRootCertificateProvider)
    (twistProvider : HybridPaperTwistCertificateProvider)
    (rootProvider : HybridPaperRootEnvelopeCertificate) :
    Erdos848PaperTwoHundredMillionToTwoBillionClose := by
  intro N hLower hUpper
  obtain ⟨regime, hcover⟩ :=
    exists_hybridPaperDiagonalRegime hLower hUpper
  apply originalProblem_of_hallStatement
  intro B hBout hBprop
  by_contra hnotHall
  have hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card := by omega
  obtain ⟨branch, hbranch⟩ :=
    exists_twentyMillionBranchApplies_global19
      (by omega) hBout hBprop hdefect
  let certificate :=
    hybridKernelTerminalCertificate_of_branch
      normalProvider twistProvider rootProvider
      hcover hBout hbranch
  obtain ⟨terminalBranch, hratio⟩ :=
    certificate.completion_ratio_le_branchTotal
      hcover hBout hBprop
  have htarget :
      ((hallCompletion N B).card : Rat) / N ≤
        twentyMillionHallTarget N := by
    exact hratio.trans <|
      (le_of_lt
        (hybridTenBranchTotal_lt_target regime terminalBranch)).trans <|
      hybridTenBranchTarget_le_normalizedTarget hcover
  have hHall := twentyMillionHall_of_ratio_le_target
    (by omega) hBout htarget
  omega

#print axioms
  erdos848PaperTwoHundredMillionToTwoBillionClose_of_certificates

end Erdos848
