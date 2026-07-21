import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0005Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0005Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0005Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0005Part03

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0005 : List ℕ :=
  [431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521]

theorem rootMaskSemanticGroup0005_passes :
    rootMaskSemanticGroup0005.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0005
        rootTwistQrMaskWords0005) = true := by
  rw [show rootMaskSemanticGroup0005 =
      rootMaskSemanticGroup0005Part00 ++
      rootMaskSemanticGroup0005Part01 ++
      rootMaskSemanticGroup0005Part02 ++
      rootMaskSemanticGroup0005Part03 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0005Part00_passes]
  rw [rootMaskSemanticGroup0005Part01_passes]
  rw [rootMaskSemanticGroup0005Part02_passes]
  rw [rootMaskSemanticGroup0005Part03_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
