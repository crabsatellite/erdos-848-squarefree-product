import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0036Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0036Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0036Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0036Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0036Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0036Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0036Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0036Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0036Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0036Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0036Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0036Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0036Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0036Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0036Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0036Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0036 : List ℕ :=
  [4229, 4231, 4241, 4243, 4253, 4259, 4261, 4271, 4273, 4283, 4289, 4297, 4327, 4337, 4339, 4349]

theorem rootMaskSemanticGroup0036_passes :
    rootMaskSemanticGroup0036.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0036
        rootTwistQrMaskWords0036) = true := by
  rw [show rootMaskSemanticGroup0036 =
      rootMaskSemanticGroup0036Part00 ++
      rootMaskSemanticGroup0036Part01 ++
      rootMaskSemanticGroup0036Part02 ++
      rootMaskSemanticGroup0036Part03 ++
      rootMaskSemanticGroup0036Part04 ++
      rootMaskSemanticGroup0036Part05 ++
      rootMaskSemanticGroup0036Part06 ++
      rootMaskSemanticGroup0036Part07 ++
      rootMaskSemanticGroup0036Part08 ++
      rootMaskSemanticGroup0036Part09 ++
      rootMaskSemanticGroup0036Part10 ++
      rootMaskSemanticGroup0036Part11 ++
      rootMaskSemanticGroup0036Part12 ++
      rootMaskSemanticGroup0036Part13 ++
      rootMaskSemanticGroup0036Part14 ++
      rootMaskSemanticGroup0036Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0036Part00_passes]
  rw [rootMaskSemanticGroup0036Part01_passes]
  rw [rootMaskSemanticGroup0036Part02_passes]
  rw [rootMaskSemanticGroup0036Part03_passes]
  rw [rootMaskSemanticGroup0036Part04_passes]
  rw [rootMaskSemanticGroup0036Part05_passes]
  rw [rootMaskSemanticGroup0036Part06_passes]
  rw [rootMaskSemanticGroup0036Part07_passes]
  rw [rootMaskSemanticGroup0036Part08_passes]
  rw [rootMaskSemanticGroup0036Part09_passes]
  rw [rootMaskSemanticGroup0036Part10_passes]
  rw [rootMaskSemanticGroup0036Part11_passes]
  rw [rootMaskSemanticGroup0036Part12_passes]
  rw [rootMaskSemanticGroup0036Part13_passes]
  rw [rootMaskSemanticGroup0036Part14_passes]
  rw [rootMaskSemanticGroup0036Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
