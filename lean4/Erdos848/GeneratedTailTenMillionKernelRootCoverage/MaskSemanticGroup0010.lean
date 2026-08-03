import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0010Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0010Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0010Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0010Part03

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0010 : List ℕ :=
  [967, 971, 977, 983, 991, 997, 1009, 1013, 1019, 1021, 1031, 1033, 1039, 1049, 1051, 1061]

theorem rootMaskSemanticGroup0010_passes :
    rootMaskSemanticGroup0010.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0010
        rootTwistQrMaskWords0010) = true := by
  rw [show rootMaskSemanticGroup0010 =
      rootMaskSemanticGroup0010Part00 ++
      rootMaskSemanticGroup0010Part01 ++
      rootMaskSemanticGroup0010Part02 ++
      rootMaskSemanticGroup0010Part03 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0010Part00_passes]
  rw [rootMaskSemanticGroup0010Part01_passes]
  rw [rootMaskSemanticGroup0010Part02_passes]
  rw [rootMaskSemanticGroup0010Part03_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
