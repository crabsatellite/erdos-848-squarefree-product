import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0011Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0011Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0011Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0011Part03

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0011 : List ℕ :=
  [1063, 1069, 1087, 1091, 1093, 1097, 1103, 1109, 1117, 1123, 1129, 1151, 1153, 1163, 1171, 1181]

theorem rootMaskSemanticGroup0011_passes :
    rootMaskSemanticGroup0011.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0011
        rootTwistQrMaskWords0011) = true := by
  rw [show rootMaskSemanticGroup0011 =
      rootMaskSemanticGroup0011Part00 ++
      rootMaskSemanticGroup0011Part01 ++
      rootMaskSemanticGroup0011Part02 ++
      rootMaskSemanticGroup0011Part03 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0011Part00_passes]
  rw [rootMaskSemanticGroup0011Part01_passes]
  rw [rootMaskSemanticGroup0011Part02_passes]
  rw [rootMaskSemanticGroup0011Part03_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
