import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0025Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0025Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0025Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0025Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0025Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0025Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0025Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0025Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0025Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0025Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0025Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0025Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0025Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0025Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0025Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0025Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0025 : List ℕ :=
  [2767, 2777, 2789, 2791, 2797, 2801, 2803, 2819, 2833, 2837, 2843, 2851, 2857, 2861, 2879, 2887]

theorem rootMaskSemanticGroup0025_passes :
    rootMaskSemanticGroup0025.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0025
        rootTwistQrMaskWords0025) = true := by
  rw [show rootMaskSemanticGroup0025 =
      rootMaskSemanticGroup0025Part00 ++
      rootMaskSemanticGroup0025Part01 ++
      rootMaskSemanticGroup0025Part02 ++
      rootMaskSemanticGroup0025Part03 ++
      rootMaskSemanticGroup0025Part04 ++
      rootMaskSemanticGroup0025Part05 ++
      rootMaskSemanticGroup0025Part06 ++
      rootMaskSemanticGroup0025Part07 ++
      rootMaskSemanticGroup0025Part08 ++
      rootMaskSemanticGroup0025Part09 ++
      rootMaskSemanticGroup0025Part10 ++
      rootMaskSemanticGroup0025Part11 ++
      rootMaskSemanticGroup0025Part12 ++
      rootMaskSemanticGroup0025Part13 ++
      rootMaskSemanticGroup0025Part14 ++
      rootMaskSemanticGroup0025Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0025Part00_passes]
  rw [rootMaskSemanticGroup0025Part01_passes]
  rw [rootMaskSemanticGroup0025Part02_passes]
  rw [rootMaskSemanticGroup0025Part03_passes]
  rw [rootMaskSemanticGroup0025Part04_passes]
  rw [rootMaskSemanticGroup0025Part05_passes]
  rw [rootMaskSemanticGroup0025Part06_passes]
  rw [rootMaskSemanticGroup0025Part07_passes]
  rw [rootMaskSemanticGroup0025Part08_passes]
  rw [rootMaskSemanticGroup0025Part09_passes]
  rw [rootMaskSemanticGroup0025Part10_passes]
  rw [rootMaskSemanticGroup0025Part11_passes]
  rw [rootMaskSemanticGroup0025Part12_passes]
  rw [rootMaskSemanticGroup0025Part13_passes]
  rw [rootMaskSemanticGroup0025Part14_passes]
  rw [rootMaskSemanticGroup0025Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
