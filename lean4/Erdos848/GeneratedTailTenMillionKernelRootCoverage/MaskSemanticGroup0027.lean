import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0027Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0027Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0027Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0027Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0027Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0027Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0027Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0027Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0027Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0027Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0027Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0027Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0027Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0027Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0027Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0027Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0027 : List ℕ :=
  [3037, 3041, 3049, 3061, 3067, 3079, 3083, 3089, 3109, 3119, 3121, 3137, 3163, 3167, 3169, 3181]

theorem rootMaskSemanticGroup0027_passes :
    rootMaskSemanticGroup0027.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0027
        rootTwistQrMaskWords0027) = true := by
  rw [show rootMaskSemanticGroup0027 =
      rootMaskSemanticGroup0027Part00 ++
      rootMaskSemanticGroup0027Part01 ++
      rootMaskSemanticGroup0027Part02 ++
      rootMaskSemanticGroup0027Part03 ++
      rootMaskSemanticGroup0027Part04 ++
      rootMaskSemanticGroup0027Part05 ++
      rootMaskSemanticGroup0027Part06 ++
      rootMaskSemanticGroup0027Part07 ++
      rootMaskSemanticGroup0027Part08 ++
      rootMaskSemanticGroup0027Part09 ++
      rootMaskSemanticGroup0027Part10 ++
      rootMaskSemanticGroup0027Part11 ++
      rootMaskSemanticGroup0027Part12 ++
      rootMaskSemanticGroup0027Part13 ++
      rootMaskSemanticGroup0027Part14 ++
      rootMaskSemanticGroup0027Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0027Part00_passes]
  rw [rootMaskSemanticGroup0027Part01_passes]
  rw [rootMaskSemanticGroup0027Part02_passes]
  rw [rootMaskSemanticGroup0027Part03_passes]
  rw [rootMaskSemanticGroup0027Part04_passes]
  rw [rootMaskSemanticGroup0027Part05_passes]
  rw [rootMaskSemanticGroup0027Part06_passes]
  rw [rootMaskSemanticGroup0027Part07_passes]
  rw [rootMaskSemanticGroup0027Part08_passes]
  rw [rootMaskSemanticGroup0027Part09_passes]
  rw [rootMaskSemanticGroup0027Part10_passes]
  rw [rootMaskSemanticGroup0027Part11_passes]
  rw [rootMaskSemanticGroup0027Part12_passes]
  rw [rootMaskSemanticGroup0027Part13_passes]
  rw [rootMaskSemanticGroup0027Part14_passes]
  rw [rootMaskSemanticGroup0027Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
