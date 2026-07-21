import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0017Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0017Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0017Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0017Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0017Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0017Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0017Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0017Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0017Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0017Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0017Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0017Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0017Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0017Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0017Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0017Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0017 : List ℕ :=
  [1777, 1783, 1787, 1789, 1801, 1811, 1823, 1831, 1847, 1861, 1867, 1871, 1873, 1877, 1879, 1889]

theorem rootMaskSemanticGroup0017_passes :
    rootMaskSemanticGroup0017.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0017
        rootTwistQrMaskWords0017) = true := by
  rw [show rootMaskSemanticGroup0017 =
      rootMaskSemanticGroup0017Part00 ++
      rootMaskSemanticGroup0017Part01 ++
      rootMaskSemanticGroup0017Part02 ++
      rootMaskSemanticGroup0017Part03 ++
      rootMaskSemanticGroup0017Part04 ++
      rootMaskSemanticGroup0017Part05 ++
      rootMaskSemanticGroup0017Part06 ++
      rootMaskSemanticGroup0017Part07 ++
      rootMaskSemanticGroup0017Part08 ++
      rootMaskSemanticGroup0017Part09 ++
      rootMaskSemanticGroup0017Part10 ++
      rootMaskSemanticGroup0017Part11 ++
      rootMaskSemanticGroup0017Part12 ++
      rootMaskSemanticGroup0017Part13 ++
      rootMaskSemanticGroup0017Part14 ++
      rootMaskSemanticGroup0017Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0017Part00_passes]
  rw [rootMaskSemanticGroup0017Part01_passes]
  rw [rootMaskSemanticGroup0017Part02_passes]
  rw [rootMaskSemanticGroup0017Part03_passes]
  rw [rootMaskSemanticGroup0017Part04_passes]
  rw [rootMaskSemanticGroup0017Part05_passes]
  rw [rootMaskSemanticGroup0017Part06_passes]
  rw [rootMaskSemanticGroup0017Part07_passes]
  rw [rootMaskSemanticGroup0017Part08_passes]
  rw [rootMaskSemanticGroup0017Part09_passes]
  rw [rootMaskSemanticGroup0017Part10_passes]
  rw [rootMaskSemanticGroup0017Part11_passes]
  rw [rootMaskSemanticGroup0017Part12_passes]
  rw [rootMaskSemanticGroup0017Part13_passes]
  rw [rootMaskSemanticGroup0017Part14_passes]
  rw [rootMaskSemanticGroup0017Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
