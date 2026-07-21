import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0030Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0030Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0030Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0030Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0030Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0030Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0030Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0030Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0030Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0030Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0030Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0030Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0030Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0030Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0030Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0030Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0030 : List ℕ :=
  [3457, 3461, 3463, 3467, 3469, 3491, 3499, 3511, 3517, 3527, 3529, 3533, 3539, 3541, 3547, 3557]

theorem rootMaskSemanticGroup0030_passes :
    rootMaskSemanticGroup0030.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0030
        rootTwistQrMaskWords0030) = true := by
  rw [show rootMaskSemanticGroup0030 =
      rootMaskSemanticGroup0030Part00 ++
      rootMaskSemanticGroup0030Part01 ++
      rootMaskSemanticGroup0030Part02 ++
      rootMaskSemanticGroup0030Part03 ++
      rootMaskSemanticGroup0030Part04 ++
      rootMaskSemanticGroup0030Part05 ++
      rootMaskSemanticGroup0030Part06 ++
      rootMaskSemanticGroup0030Part07 ++
      rootMaskSemanticGroup0030Part08 ++
      rootMaskSemanticGroup0030Part09 ++
      rootMaskSemanticGroup0030Part10 ++
      rootMaskSemanticGroup0030Part11 ++
      rootMaskSemanticGroup0030Part12 ++
      rootMaskSemanticGroup0030Part13 ++
      rootMaskSemanticGroup0030Part14 ++
      rootMaskSemanticGroup0030Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0030Part00_passes]
  rw [rootMaskSemanticGroup0030Part01_passes]
  rw [rootMaskSemanticGroup0030Part02_passes]
  rw [rootMaskSemanticGroup0030Part03_passes]
  rw [rootMaskSemanticGroup0030Part04_passes]
  rw [rootMaskSemanticGroup0030Part05_passes]
  rw [rootMaskSemanticGroup0030Part06_passes]
  rw [rootMaskSemanticGroup0030Part07_passes]
  rw [rootMaskSemanticGroup0030Part08_passes]
  rw [rootMaskSemanticGroup0030Part09_passes]
  rw [rootMaskSemanticGroup0030Part10_passes]
  rw [rootMaskSemanticGroup0030Part11_passes]
  rw [rootMaskSemanticGroup0030Part12_passes]
  rw [rootMaskSemanticGroup0030Part13_passes]
  rw [rootMaskSemanticGroup0030Part14_passes]
  rw [rootMaskSemanticGroup0030Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
