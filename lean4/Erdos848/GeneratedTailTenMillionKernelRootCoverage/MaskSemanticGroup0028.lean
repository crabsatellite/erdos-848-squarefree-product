import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0028Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0028Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0028Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0028Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0028Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0028Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0028Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0028Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0028Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0028Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0028Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0028Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0028Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0028Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0028Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0028Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0028 : List ℕ :=
  [3187, 3191, 3203, 3209, 3217, 3221, 3229, 3251, 3253, 3257, 3259, 3271, 3299, 3301, 3307, 3313]

theorem rootMaskSemanticGroup0028_passes :
    rootMaskSemanticGroup0028.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0028
        rootTwistQrMaskWords0028) = true := by
  rw [show rootMaskSemanticGroup0028 =
      rootMaskSemanticGroup0028Part00 ++
      rootMaskSemanticGroup0028Part01 ++
      rootMaskSemanticGroup0028Part02 ++
      rootMaskSemanticGroup0028Part03 ++
      rootMaskSemanticGroup0028Part04 ++
      rootMaskSemanticGroup0028Part05 ++
      rootMaskSemanticGroup0028Part06 ++
      rootMaskSemanticGroup0028Part07 ++
      rootMaskSemanticGroup0028Part08 ++
      rootMaskSemanticGroup0028Part09 ++
      rootMaskSemanticGroup0028Part10 ++
      rootMaskSemanticGroup0028Part11 ++
      rootMaskSemanticGroup0028Part12 ++
      rootMaskSemanticGroup0028Part13 ++
      rootMaskSemanticGroup0028Part14 ++
      rootMaskSemanticGroup0028Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0028Part00_passes]
  rw [rootMaskSemanticGroup0028Part01_passes]
  rw [rootMaskSemanticGroup0028Part02_passes]
  rw [rootMaskSemanticGroup0028Part03_passes]
  rw [rootMaskSemanticGroup0028Part04_passes]
  rw [rootMaskSemanticGroup0028Part05_passes]
  rw [rootMaskSemanticGroup0028Part06_passes]
  rw [rootMaskSemanticGroup0028Part07_passes]
  rw [rootMaskSemanticGroup0028Part08_passes]
  rw [rootMaskSemanticGroup0028Part09_passes]
  rw [rootMaskSemanticGroup0028Part10_passes]
  rw [rootMaskSemanticGroup0028Part11_passes]
  rw [rootMaskSemanticGroup0028Part12_passes]
  rw [rootMaskSemanticGroup0028Part13_passes]
  rw [rootMaskSemanticGroup0028Part14_passes]
  rw [rootMaskSemanticGroup0028Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
