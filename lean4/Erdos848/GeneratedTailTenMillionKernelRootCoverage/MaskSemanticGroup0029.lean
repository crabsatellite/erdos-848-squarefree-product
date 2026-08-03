import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0029Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0029Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0029Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0029Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0029Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0029Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0029Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0029Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0029Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0029Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0029Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0029Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0029Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0029Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0029Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0029Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0029 : List ℕ :=
  [3319, 3323, 3329, 3331, 3343, 3347, 3359, 3361, 3371, 3373, 3389, 3391, 3407, 3413, 3433, 3449]

theorem rootMaskSemanticGroup0029_passes :
    rootMaskSemanticGroup0029.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0029
        rootTwistQrMaskWords0029) = true := by
  rw [show rootMaskSemanticGroup0029 =
      rootMaskSemanticGroup0029Part00 ++
      rootMaskSemanticGroup0029Part01 ++
      rootMaskSemanticGroup0029Part02 ++
      rootMaskSemanticGroup0029Part03 ++
      rootMaskSemanticGroup0029Part04 ++
      rootMaskSemanticGroup0029Part05 ++
      rootMaskSemanticGroup0029Part06 ++
      rootMaskSemanticGroup0029Part07 ++
      rootMaskSemanticGroup0029Part08 ++
      rootMaskSemanticGroup0029Part09 ++
      rootMaskSemanticGroup0029Part10 ++
      rootMaskSemanticGroup0029Part11 ++
      rootMaskSemanticGroup0029Part12 ++
      rootMaskSemanticGroup0029Part13 ++
      rootMaskSemanticGroup0029Part14 ++
      rootMaskSemanticGroup0029Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0029Part00_passes]
  rw [rootMaskSemanticGroup0029Part01_passes]
  rw [rootMaskSemanticGroup0029Part02_passes]
  rw [rootMaskSemanticGroup0029Part03_passes]
  rw [rootMaskSemanticGroup0029Part04_passes]
  rw [rootMaskSemanticGroup0029Part05_passes]
  rw [rootMaskSemanticGroup0029Part06_passes]
  rw [rootMaskSemanticGroup0029Part07_passes]
  rw [rootMaskSemanticGroup0029Part08_passes]
  rw [rootMaskSemanticGroup0029Part09_passes]
  rw [rootMaskSemanticGroup0029Part10_passes]
  rw [rootMaskSemanticGroup0029Part11_passes]
  rw [rootMaskSemanticGroup0029Part12_passes]
  rw [rootMaskSemanticGroup0029Part13_passes]
  rw [rootMaskSemanticGroup0029Part14_passes]
  rw [rootMaskSemanticGroup0029Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
