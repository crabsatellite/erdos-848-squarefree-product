import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0004Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0004Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0004Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0004Part03

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0004 : List ℕ :=
  [331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421]

theorem rootMaskSemanticGroup0004_passes :
    rootMaskSemanticGroup0004.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0004
        rootTwistQrMaskWords0004) = true := by
  rw [show rootMaskSemanticGroup0004 =
      rootMaskSemanticGroup0004Part00 ++
      rootMaskSemanticGroup0004Part01 ++
      rootMaskSemanticGroup0004Part02 ++
      rootMaskSemanticGroup0004Part03 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0004Part00_passes]
  rw [rootMaskSemanticGroup0004Part01_passes]
  rw [rootMaskSemanticGroup0004Part02_passes]
  rw [rootMaskSemanticGroup0004Part03_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
