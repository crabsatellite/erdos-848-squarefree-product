import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0026Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0026Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0026Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0026Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0026Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0026Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0026Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0026Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0026Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0026Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0026Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0026Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0026Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0026Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0026Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0026Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0026 : List ℕ :=
  [2897, 2903, 2909, 2917, 2927, 2939, 2953, 2957, 2963, 2969, 2971, 2999, 3001, 3011, 3019, 3023]

theorem rootMaskSemanticGroup0026_passes :
    rootMaskSemanticGroup0026.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0026
        rootTwistQrMaskWords0026) = true := by
  rw [show rootMaskSemanticGroup0026 =
      rootMaskSemanticGroup0026Part00 ++
      rootMaskSemanticGroup0026Part01 ++
      rootMaskSemanticGroup0026Part02 ++
      rootMaskSemanticGroup0026Part03 ++
      rootMaskSemanticGroup0026Part04 ++
      rootMaskSemanticGroup0026Part05 ++
      rootMaskSemanticGroup0026Part06 ++
      rootMaskSemanticGroup0026Part07 ++
      rootMaskSemanticGroup0026Part08 ++
      rootMaskSemanticGroup0026Part09 ++
      rootMaskSemanticGroup0026Part10 ++
      rootMaskSemanticGroup0026Part11 ++
      rootMaskSemanticGroup0026Part12 ++
      rootMaskSemanticGroup0026Part13 ++
      rootMaskSemanticGroup0026Part14 ++
      rootMaskSemanticGroup0026Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0026Part00_passes]
  rw [rootMaskSemanticGroup0026Part01_passes]
  rw [rootMaskSemanticGroup0026Part02_passes]
  rw [rootMaskSemanticGroup0026Part03_passes]
  rw [rootMaskSemanticGroup0026Part04_passes]
  rw [rootMaskSemanticGroup0026Part05_passes]
  rw [rootMaskSemanticGroup0026Part06_passes]
  rw [rootMaskSemanticGroup0026Part07_passes]
  rw [rootMaskSemanticGroup0026Part08_passes]
  rw [rootMaskSemanticGroup0026Part09_passes]
  rw [rootMaskSemanticGroup0026Part10_passes]
  rw [rootMaskSemanticGroup0026Part11_passes]
  rw [rootMaskSemanticGroup0026Part12_passes]
  rw [rootMaskSemanticGroup0026Part13_passes]
  rw [rootMaskSemanticGroup0026Part14_passes]
  rw [rootMaskSemanticGroup0026Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
