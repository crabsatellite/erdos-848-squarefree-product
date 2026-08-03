import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0024Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0024Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0024Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0024Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0024Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0024Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0024Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0024Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0024Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0024Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0024Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0024Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0024Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0024Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0024Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0024Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0024 : List ℕ :=
  [2671, 2677, 2683, 2687, 2689, 2693, 2699, 2707, 2711, 2713, 2719, 2729, 2731, 2741, 2749, 2753]

theorem rootMaskSemanticGroup0024_passes :
    rootMaskSemanticGroup0024.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0024
        rootTwistQrMaskWords0024) = true := by
  rw [show rootMaskSemanticGroup0024 =
      rootMaskSemanticGroup0024Part00 ++
      rootMaskSemanticGroup0024Part01 ++
      rootMaskSemanticGroup0024Part02 ++
      rootMaskSemanticGroup0024Part03 ++
      rootMaskSemanticGroup0024Part04 ++
      rootMaskSemanticGroup0024Part05 ++
      rootMaskSemanticGroup0024Part06 ++
      rootMaskSemanticGroup0024Part07 ++
      rootMaskSemanticGroup0024Part08 ++
      rootMaskSemanticGroup0024Part09 ++
      rootMaskSemanticGroup0024Part10 ++
      rootMaskSemanticGroup0024Part11 ++
      rootMaskSemanticGroup0024Part12 ++
      rootMaskSemanticGroup0024Part13 ++
      rootMaskSemanticGroup0024Part14 ++
      rootMaskSemanticGroup0024Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0024Part00_passes]
  rw [rootMaskSemanticGroup0024Part01_passes]
  rw [rootMaskSemanticGroup0024Part02_passes]
  rw [rootMaskSemanticGroup0024Part03_passes]
  rw [rootMaskSemanticGroup0024Part04_passes]
  rw [rootMaskSemanticGroup0024Part05_passes]
  rw [rootMaskSemanticGroup0024Part06_passes]
  rw [rootMaskSemanticGroup0024Part07_passes]
  rw [rootMaskSemanticGroup0024Part08_passes]
  rw [rootMaskSemanticGroup0024Part09_passes]
  rw [rootMaskSemanticGroup0024Part10_passes]
  rw [rootMaskSemanticGroup0024Part11_passes]
  rw [rootMaskSemanticGroup0024Part12_passes]
  rw [rootMaskSemanticGroup0024Part13_passes]
  rw [rootMaskSemanticGroup0024Part14_passes]
  rw [rootMaskSemanticGroup0024Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
