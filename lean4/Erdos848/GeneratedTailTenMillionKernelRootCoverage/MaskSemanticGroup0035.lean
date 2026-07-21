import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0035Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0035Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0035Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0035Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0035Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0035Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0035Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0035Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0035Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0035Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0035Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0035Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0035Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0035Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0035Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0035Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0035 : List ℕ :=
  [4091, 4093, 4099, 4111, 4127, 4129, 4133, 4139, 4153, 4157, 4159, 4177, 4201, 4211, 4217, 4219]

theorem rootMaskSemanticGroup0035_passes :
    rootMaskSemanticGroup0035.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0035
        rootTwistQrMaskWords0035) = true := by
  rw [show rootMaskSemanticGroup0035 =
      rootMaskSemanticGroup0035Part00 ++
      rootMaskSemanticGroup0035Part01 ++
      rootMaskSemanticGroup0035Part02 ++
      rootMaskSemanticGroup0035Part03 ++
      rootMaskSemanticGroup0035Part04 ++
      rootMaskSemanticGroup0035Part05 ++
      rootMaskSemanticGroup0035Part06 ++
      rootMaskSemanticGroup0035Part07 ++
      rootMaskSemanticGroup0035Part08 ++
      rootMaskSemanticGroup0035Part09 ++
      rootMaskSemanticGroup0035Part10 ++
      rootMaskSemanticGroup0035Part11 ++
      rootMaskSemanticGroup0035Part12 ++
      rootMaskSemanticGroup0035Part13 ++
      rootMaskSemanticGroup0035Part14 ++
      rootMaskSemanticGroup0035Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0035Part00_passes]
  rw [rootMaskSemanticGroup0035Part01_passes]
  rw [rootMaskSemanticGroup0035Part02_passes]
  rw [rootMaskSemanticGroup0035Part03_passes]
  rw [rootMaskSemanticGroup0035Part04_passes]
  rw [rootMaskSemanticGroup0035Part05_passes]
  rw [rootMaskSemanticGroup0035Part06_passes]
  rw [rootMaskSemanticGroup0035Part07_passes]
  rw [rootMaskSemanticGroup0035Part08_passes]
  rw [rootMaskSemanticGroup0035Part09_passes]
  rw [rootMaskSemanticGroup0035Part10_passes]
  rw [rootMaskSemanticGroup0035Part11_passes]
  rw [rootMaskSemanticGroup0035Part12_passes]
  rw [rootMaskSemanticGroup0035Part13_passes]
  rw [rootMaskSemanticGroup0035Part14_passes]
  rw [rootMaskSemanticGroup0035Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
