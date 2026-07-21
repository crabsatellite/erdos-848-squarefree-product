import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0002Part03

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0002 : List ℕ :=
  [149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229]

theorem rootMaskSemanticGroup0002_passes :
    rootMaskSemanticGroup0002.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0002
        rootTwistQrMaskWords0002) = true := by
  rw [show rootMaskSemanticGroup0002 =
      rootMaskSemanticGroup0002Part00 ++
      rootMaskSemanticGroup0002Part01 ++
      rootMaskSemanticGroup0002Part02 ++
      rootMaskSemanticGroup0002Part03 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0002Part00_passes]
  rw [rootMaskSemanticGroup0002Part01_passes]
  rw [rootMaskSemanticGroup0002Part02_passes]
  rw [rootMaskSemanticGroup0002Part03_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
