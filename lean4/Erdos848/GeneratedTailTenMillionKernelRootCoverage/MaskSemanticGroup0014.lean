import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0014Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0014Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0014Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0014Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0014Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0014Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0014Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0014Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0014Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0014Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0014Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0014Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0014Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0014Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0014Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0014Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0014 : List ℕ :=
  [1433, 1439, 1447, 1451, 1453, 1459, 1471, 1481, 1483, 1487, 1489, 1493, 1499, 1511, 1523, 1531]

theorem rootMaskSemanticGroup0014_passes :
    rootMaskSemanticGroup0014.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0014
        rootTwistQrMaskWords0014) = true := by
  rw [show rootMaskSemanticGroup0014 =
      rootMaskSemanticGroup0014Part00 ++
      rootMaskSemanticGroup0014Part01 ++
      rootMaskSemanticGroup0014Part02 ++
      rootMaskSemanticGroup0014Part03 ++
      rootMaskSemanticGroup0014Part04 ++
      rootMaskSemanticGroup0014Part05 ++
      rootMaskSemanticGroup0014Part06 ++
      rootMaskSemanticGroup0014Part07 ++
      rootMaskSemanticGroup0014Part08 ++
      rootMaskSemanticGroup0014Part09 ++
      rootMaskSemanticGroup0014Part10 ++
      rootMaskSemanticGroup0014Part11 ++
      rootMaskSemanticGroup0014Part12 ++
      rootMaskSemanticGroup0014Part13 ++
      rootMaskSemanticGroup0014Part14 ++
      rootMaskSemanticGroup0014Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0014Part00_passes]
  rw [rootMaskSemanticGroup0014Part01_passes]
  rw [rootMaskSemanticGroup0014Part02_passes]
  rw [rootMaskSemanticGroup0014Part03_passes]
  rw [rootMaskSemanticGroup0014Part04_passes]
  rw [rootMaskSemanticGroup0014Part05_passes]
  rw [rootMaskSemanticGroup0014Part06_passes]
  rw [rootMaskSemanticGroup0014Part07_passes]
  rw [rootMaskSemanticGroup0014Part08_passes]
  rw [rootMaskSemanticGroup0014Part09_passes]
  rw [rootMaskSemanticGroup0014Part10_passes]
  rw [rootMaskSemanticGroup0014Part11_passes]
  rw [rootMaskSemanticGroup0014Part12_passes]
  rw [rootMaskSemanticGroup0014Part13_passes]
  rw [rootMaskSemanticGroup0014Part14_passes]
  rw [rootMaskSemanticGroup0014Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
