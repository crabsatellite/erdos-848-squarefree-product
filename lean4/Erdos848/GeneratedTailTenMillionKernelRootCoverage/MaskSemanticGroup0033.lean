import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0033Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0033Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0033Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0033Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0033Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0033Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0033Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0033Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0033Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0033Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0033Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0033Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0033Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0033Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0033Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0033Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0033 : List ℕ :=
  [3823, 3833, 3847, 3851, 3853, 3863, 3877, 3881, 3889, 3907, 3911, 3917, 3919, 3923, 3929, 3931]

theorem rootMaskSemanticGroup0033_passes :
    rootMaskSemanticGroup0033.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0033
        rootTwistQrMaskWords0033) = true := by
  rw [show rootMaskSemanticGroup0033 =
      rootMaskSemanticGroup0033Part00 ++
      rootMaskSemanticGroup0033Part01 ++
      rootMaskSemanticGroup0033Part02 ++
      rootMaskSemanticGroup0033Part03 ++
      rootMaskSemanticGroup0033Part04 ++
      rootMaskSemanticGroup0033Part05 ++
      rootMaskSemanticGroup0033Part06 ++
      rootMaskSemanticGroup0033Part07 ++
      rootMaskSemanticGroup0033Part08 ++
      rootMaskSemanticGroup0033Part09 ++
      rootMaskSemanticGroup0033Part10 ++
      rootMaskSemanticGroup0033Part11 ++
      rootMaskSemanticGroup0033Part12 ++
      rootMaskSemanticGroup0033Part13 ++
      rootMaskSemanticGroup0033Part14 ++
      rootMaskSemanticGroup0033Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0033Part00_passes]
  rw [rootMaskSemanticGroup0033Part01_passes]
  rw [rootMaskSemanticGroup0033Part02_passes]
  rw [rootMaskSemanticGroup0033Part03_passes]
  rw [rootMaskSemanticGroup0033Part04_passes]
  rw [rootMaskSemanticGroup0033Part05_passes]
  rw [rootMaskSemanticGroup0033Part06_passes]
  rw [rootMaskSemanticGroup0033Part07_passes]
  rw [rootMaskSemanticGroup0033Part08_passes]
  rw [rootMaskSemanticGroup0033Part09_passes]
  rw [rootMaskSemanticGroup0033Part10_passes]
  rw [rootMaskSemanticGroup0033Part11_passes]
  rw [rootMaskSemanticGroup0033Part12_passes]
  rw [rootMaskSemanticGroup0033Part13_passes]
  rw [rootMaskSemanticGroup0033Part14_passes]
  rw [rootMaskSemanticGroup0033Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
