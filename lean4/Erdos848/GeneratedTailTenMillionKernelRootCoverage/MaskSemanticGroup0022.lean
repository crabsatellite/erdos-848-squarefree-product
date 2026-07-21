import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0022Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0022Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0022Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0022Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0022Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0022Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0022Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0022Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0022Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0022Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0022Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0022Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0022Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0022Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0022Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0022Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0022 : List ℕ :=
  [2389, 2393, 2399, 2411, 2417, 2423, 2437, 2441, 2447, 2459, 2467, 2473, 2477, 2503, 2521, 2531]

theorem rootMaskSemanticGroup0022_passes :
    rootMaskSemanticGroup0022.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0022
        rootTwistQrMaskWords0022) = true := by
  rw [show rootMaskSemanticGroup0022 =
      rootMaskSemanticGroup0022Part00 ++
      rootMaskSemanticGroup0022Part01 ++
      rootMaskSemanticGroup0022Part02 ++
      rootMaskSemanticGroup0022Part03 ++
      rootMaskSemanticGroup0022Part04 ++
      rootMaskSemanticGroup0022Part05 ++
      rootMaskSemanticGroup0022Part06 ++
      rootMaskSemanticGroup0022Part07 ++
      rootMaskSemanticGroup0022Part08 ++
      rootMaskSemanticGroup0022Part09 ++
      rootMaskSemanticGroup0022Part10 ++
      rootMaskSemanticGroup0022Part11 ++
      rootMaskSemanticGroup0022Part12 ++
      rootMaskSemanticGroup0022Part13 ++
      rootMaskSemanticGroup0022Part14 ++
      rootMaskSemanticGroup0022Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0022Part00_passes]
  rw [rootMaskSemanticGroup0022Part01_passes]
  rw [rootMaskSemanticGroup0022Part02_passes]
  rw [rootMaskSemanticGroup0022Part03_passes]
  rw [rootMaskSemanticGroup0022Part04_passes]
  rw [rootMaskSemanticGroup0022Part05_passes]
  rw [rootMaskSemanticGroup0022Part06_passes]
  rw [rootMaskSemanticGroup0022Part07_passes]
  rw [rootMaskSemanticGroup0022Part08_passes]
  rw [rootMaskSemanticGroup0022Part09_passes]
  rw [rootMaskSemanticGroup0022Part10_passes]
  rw [rootMaskSemanticGroup0022Part11_passes]
  rw [rootMaskSemanticGroup0022Part12_passes]
  rw [rootMaskSemanticGroup0022Part13_passes]
  rw [rootMaskSemanticGroup0022Part14_passes]
  rw [rootMaskSemanticGroup0022Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
