import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0016Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0016Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0016Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0016Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0016Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0016Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0016Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0016Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0016Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0016Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0016Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0016Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0016Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0016Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0016Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0016Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0016 : List ℕ :=
  [1637, 1657, 1663, 1667, 1669, 1693, 1697, 1699, 1709, 1721, 1723, 1733, 1741, 1747, 1753, 1759]

theorem rootMaskSemanticGroup0016_passes :
    rootMaskSemanticGroup0016.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0016
        rootTwistQrMaskWords0016) = true := by
  rw [show rootMaskSemanticGroup0016 =
      rootMaskSemanticGroup0016Part00 ++
      rootMaskSemanticGroup0016Part01 ++
      rootMaskSemanticGroup0016Part02 ++
      rootMaskSemanticGroup0016Part03 ++
      rootMaskSemanticGroup0016Part04 ++
      rootMaskSemanticGroup0016Part05 ++
      rootMaskSemanticGroup0016Part06 ++
      rootMaskSemanticGroup0016Part07 ++
      rootMaskSemanticGroup0016Part08 ++
      rootMaskSemanticGroup0016Part09 ++
      rootMaskSemanticGroup0016Part10 ++
      rootMaskSemanticGroup0016Part11 ++
      rootMaskSemanticGroup0016Part12 ++
      rootMaskSemanticGroup0016Part13 ++
      rootMaskSemanticGroup0016Part14 ++
      rootMaskSemanticGroup0016Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0016Part00_passes]
  rw [rootMaskSemanticGroup0016Part01_passes]
  rw [rootMaskSemanticGroup0016Part02_passes]
  rw [rootMaskSemanticGroup0016Part03_passes]
  rw [rootMaskSemanticGroup0016Part04_passes]
  rw [rootMaskSemanticGroup0016Part05_passes]
  rw [rootMaskSemanticGroup0016Part06_passes]
  rw [rootMaskSemanticGroup0016Part07_passes]
  rw [rootMaskSemanticGroup0016Part08_passes]
  rw [rootMaskSemanticGroup0016Part09_passes]
  rw [rootMaskSemanticGroup0016Part10_passes]
  rw [rootMaskSemanticGroup0016Part11_passes]
  rw [rootMaskSemanticGroup0016Part12_passes]
  rw [rootMaskSemanticGroup0016Part13_passes]
  rw [rootMaskSemanticGroup0016Part14_passes]
  rw [rootMaskSemanticGroup0016Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
