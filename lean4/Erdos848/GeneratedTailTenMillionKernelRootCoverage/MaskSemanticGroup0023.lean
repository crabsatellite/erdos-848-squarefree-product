import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0023Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0023Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0023Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0023Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0023Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0023Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0023Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0023Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0023Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0023Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0023Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0023Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0023Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0023Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0023Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0023Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0023 : List ℕ :=
  [2539, 2543, 2549, 2551, 2557, 2579, 2591, 2593, 2609, 2617, 2621, 2633, 2647, 2657, 2659, 2663]

theorem rootMaskSemanticGroup0023_passes :
    rootMaskSemanticGroup0023.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0023
        rootTwistQrMaskWords0023) = true := by
  rw [show rootMaskSemanticGroup0023 =
      rootMaskSemanticGroup0023Part00 ++
      rootMaskSemanticGroup0023Part01 ++
      rootMaskSemanticGroup0023Part02 ++
      rootMaskSemanticGroup0023Part03 ++
      rootMaskSemanticGroup0023Part04 ++
      rootMaskSemanticGroup0023Part05 ++
      rootMaskSemanticGroup0023Part06 ++
      rootMaskSemanticGroup0023Part07 ++
      rootMaskSemanticGroup0023Part08 ++
      rootMaskSemanticGroup0023Part09 ++
      rootMaskSemanticGroup0023Part10 ++
      rootMaskSemanticGroup0023Part11 ++
      rootMaskSemanticGroup0023Part12 ++
      rootMaskSemanticGroup0023Part13 ++
      rootMaskSemanticGroup0023Part14 ++
      rootMaskSemanticGroup0023Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0023Part00_passes]
  rw [rootMaskSemanticGroup0023Part01_passes]
  rw [rootMaskSemanticGroup0023Part02_passes]
  rw [rootMaskSemanticGroup0023Part03_passes]
  rw [rootMaskSemanticGroup0023Part04_passes]
  rw [rootMaskSemanticGroup0023Part05_passes]
  rw [rootMaskSemanticGroup0023Part06_passes]
  rw [rootMaskSemanticGroup0023Part07_passes]
  rw [rootMaskSemanticGroup0023Part08_passes]
  rw [rootMaskSemanticGroup0023Part09_passes]
  rw [rootMaskSemanticGroup0023Part10_passes]
  rw [rootMaskSemanticGroup0023Part11_passes]
  rw [rootMaskSemanticGroup0023Part12_passes]
  rw [rootMaskSemanticGroup0023Part13_passes]
  rw [rootMaskSemanticGroup0023Part14_passes]
  rw [rootMaskSemanticGroup0023Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
