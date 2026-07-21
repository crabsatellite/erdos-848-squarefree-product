import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0034Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0034Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0034Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0034Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0034Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0034Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0034Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0034Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0034Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0034Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0034Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0034Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0034Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0034Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0034Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0034Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0034 : List ℕ :=
  [3943, 3947, 3967, 3989, 4001, 4003, 4007, 4013, 4019, 4021, 4027, 4049, 4051, 4057, 4073, 4079]

theorem rootMaskSemanticGroup0034_passes :
    rootMaskSemanticGroup0034.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0034
        rootTwistQrMaskWords0034) = true := by
  rw [show rootMaskSemanticGroup0034 =
      rootMaskSemanticGroup0034Part00 ++
      rootMaskSemanticGroup0034Part01 ++
      rootMaskSemanticGroup0034Part02 ++
      rootMaskSemanticGroup0034Part03 ++
      rootMaskSemanticGroup0034Part04 ++
      rootMaskSemanticGroup0034Part05 ++
      rootMaskSemanticGroup0034Part06 ++
      rootMaskSemanticGroup0034Part07 ++
      rootMaskSemanticGroup0034Part08 ++
      rootMaskSemanticGroup0034Part09 ++
      rootMaskSemanticGroup0034Part10 ++
      rootMaskSemanticGroup0034Part11 ++
      rootMaskSemanticGroup0034Part12 ++
      rootMaskSemanticGroup0034Part13 ++
      rootMaskSemanticGroup0034Part14 ++
      rootMaskSemanticGroup0034Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0034Part00_passes]
  rw [rootMaskSemanticGroup0034Part01_passes]
  rw [rootMaskSemanticGroup0034Part02_passes]
  rw [rootMaskSemanticGroup0034Part03_passes]
  rw [rootMaskSemanticGroup0034Part04_passes]
  rw [rootMaskSemanticGroup0034Part05_passes]
  rw [rootMaskSemanticGroup0034Part06_passes]
  rw [rootMaskSemanticGroup0034Part07_passes]
  rw [rootMaskSemanticGroup0034Part08_passes]
  rw [rootMaskSemanticGroup0034Part09_passes]
  rw [rootMaskSemanticGroup0034Part10_passes]
  rw [rootMaskSemanticGroup0034Part11_passes]
  rw [rootMaskSemanticGroup0034Part12_passes]
  rw [rootMaskSemanticGroup0034Part13_passes]
  rw [rootMaskSemanticGroup0034Part14_passes]
  rw [rootMaskSemanticGroup0034Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
