import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0032Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0032Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0032Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0032Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0032Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0032Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0032Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0032Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0032Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0032Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0032Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0032Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0032Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0032Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0032Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0032Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0032 : List ℕ :=
  [3691, 3697, 3701, 3709, 3719, 3727, 3733, 3739, 3761, 3767, 3769, 3779, 3793, 3797, 3803, 3821]

theorem rootMaskSemanticGroup0032_passes :
    rootMaskSemanticGroup0032.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0032
        rootTwistQrMaskWords0032) = true := by
  rw [show rootMaskSemanticGroup0032 =
      rootMaskSemanticGroup0032Part00 ++
      rootMaskSemanticGroup0032Part01 ++
      rootMaskSemanticGroup0032Part02 ++
      rootMaskSemanticGroup0032Part03 ++
      rootMaskSemanticGroup0032Part04 ++
      rootMaskSemanticGroup0032Part05 ++
      rootMaskSemanticGroup0032Part06 ++
      rootMaskSemanticGroup0032Part07 ++
      rootMaskSemanticGroup0032Part08 ++
      rootMaskSemanticGroup0032Part09 ++
      rootMaskSemanticGroup0032Part10 ++
      rootMaskSemanticGroup0032Part11 ++
      rootMaskSemanticGroup0032Part12 ++
      rootMaskSemanticGroup0032Part13 ++
      rootMaskSemanticGroup0032Part14 ++
      rootMaskSemanticGroup0032Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0032Part00_passes]
  rw [rootMaskSemanticGroup0032Part01_passes]
  rw [rootMaskSemanticGroup0032Part02_passes]
  rw [rootMaskSemanticGroup0032Part03_passes]
  rw [rootMaskSemanticGroup0032Part04_passes]
  rw [rootMaskSemanticGroup0032Part05_passes]
  rw [rootMaskSemanticGroup0032Part06_passes]
  rw [rootMaskSemanticGroup0032Part07_passes]
  rw [rootMaskSemanticGroup0032Part08_passes]
  rw [rootMaskSemanticGroup0032Part09_passes]
  rw [rootMaskSemanticGroup0032Part10_passes]
  rw [rootMaskSemanticGroup0032Part11_passes]
  rw [rootMaskSemanticGroup0032Part12_passes]
  rw [rootMaskSemanticGroup0032Part13_passes]
  rw [rootMaskSemanticGroup0032Part14_passes]
  rw [rootMaskSemanticGroup0032Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
