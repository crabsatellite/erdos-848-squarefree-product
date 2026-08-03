import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0031Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0031Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0031Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0031Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0031Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0031Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0031Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0031Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0031Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0031Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0031Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0031Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0031Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0031Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0031Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0031Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0031 : List ℕ :=
  [3559, 3571, 3581, 3583, 3593, 3607, 3613, 3617, 3623, 3631, 3637, 3643, 3659, 3671, 3673, 3677]

theorem rootMaskSemanticGroup0031_passes :
    rootMaskSemanticGroup0031.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0031
        rootTwistQrMaskWords0031) = true := by
  rw [show rootMaskSemanticGroup0031 =
      rootMaskSemanticGroup0031Part00 ++
      rootMaskSemanticGroup0031Part01 ++
      rootMaskSemanticGroup0031Part02 ++
      rootMaskSemanticGroup0031Part03 ++
      rootMaskSemanticGroup0031Part04 ++
      rootMaskSemanticGroup0031Part05 ++
      rootMaskSemanticGroup0031Part06 ++
      rootMaskSemanticGroup0031Part07 ++
      rootMaskSemanticGroup0031Part08 ++
      rootMaskSemanticGroup0031Part09 ++
      rootMaskSemanticGroup0031Part10 ++
      rootMaskSemanticGroup0031Part11 ++
      rootMaskSemanticGroup0031Part12 ++
      rootMaskSemanticGroup0031Part13 ++
      rootMaskSemanticGroup0031Part14 ++
      rootMaskSemanticGroup0031Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0031Part00_passes]
  rw [rootMaskSemanticGroup0031Part01_passes]
  rw [rootMaskSemanticGroup0031Part02_passes]
  rw [rootMaskSemanticGroup0031Part03_passes]
  rw [rootMaskSemanticGroup0031Part04_passes]
  rw [rootMaskSemanticGroup0031Part05_passes]
  rw [rootMaskSemanticGroup0031Part06_passes]
  rw [rootMaskSemanticGroup0031Part07_passes]
  rw [rootMaskSemanticGroup0031Part08_passes]
  rw [rootMaskSemanticGroup0031Part09_passes]
  rw [rootMaskSemanticGroup0031Part10_passes]
  rw [rootMaskSemanticGroup0031Part11_passes]
  rw [rootMaskSemanticGroup0031Part12_passes]
  rw [rootMaskSemanticGroup0031Part13_passes]
  rw [rootMaskSemanticGroup0031Part14_passes]
  rw [rootMaskSemanticGroup0031Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
