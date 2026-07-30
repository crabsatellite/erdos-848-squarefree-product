import Erdos848.TailFortyMillionKernelCertificate
import Erdos848.TailFortyMillionKernelCloseCore
import Erdos848.TailTwentyMillionDegree19

namespace Erdos848

/-! Kernel close of the full `40M <= N < 200M` interval. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem erdos848FortyMillionClose_kernel :
    Erdos848FortyMillionClose := by
  exact erdos848FortyMillionClose_of_terminalBuilder
    (fun hLower hBout hBprop hdefect =>
      exists_twentyMillionBranchApplies_global19
        hLower hBout hBprop hdefect)
    (fun hcover hBout hbranch =>
      fortyMillionKernelTerminalCertificate_of_branch
        hcover hBout hbranch)

end Erdos848
