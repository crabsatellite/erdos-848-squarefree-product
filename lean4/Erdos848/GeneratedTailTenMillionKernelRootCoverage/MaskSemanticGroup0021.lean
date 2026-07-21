import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0021Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0021Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0021Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0021Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0021Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0021Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0021Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0021Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0021Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0021Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0021Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0021Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0021Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0021Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0021Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0021Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0021 : List ℕ :=
  [2281, 2287, 2293, 2297, 2309, 2311, 2333, 2339, 2341, 2347, 2351, 2357, 2371, 2377, 2381, 2383]

theorem rootMaskSemanticGroup0021_passes :
    rootMaskSemanticGroup0021.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0021
        rootTwistQrMaskWords0021) = true := by
  rw [show rootMaskSemanticGroup0021 =
      rootMaskSemanticGroup0021Part00 ++
      rootMaskSemanticGroup0021Part01 ++
      rootMaskSemanticGroup0021Part02 ++
      rootMaskSemanticGroup0021Part03 ++
      rootMaskSemanticGroup0021Part04 ++
      rootMaskSemanticGroup0021Part05 ++
      rootMaskSemanticGroup0021Part06 ++
      rootMaskSemanticGroup0021Part07 ++
      rootMaskSemanticGroup0021Part08 ++
      rootMaskSemanticGroup0021Part09 ++
      rootMaskSemanticGroup0021Part10 ++
      rootMaskSemanticGroup0021Part11 ++
      rootMaskSemanticGroup0021Part12 ++
      rootMaskSemanticGroup0021Part13 ++
      rootMaskSemanticGroup0021Part14 ++
      rootMaskSemanticGroup0021Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0021Part00_passes]
  rw [rootMaskSemanticGroup0021Part01_passes]
  rw [rootMaskSemanticGroup0021Part02_passes]
  rw [rootMaskSemanticGroup0021Part03_passes]
  rw [rootMaskSemanticGroup0021Part04_passes]
  rw [rootMaskSemanticGroup0021Part05_passes]
  rw [rootMaskSemanticGroup0021Part06_passes]
  rw [rootMaskSemanticGroup0021Part07_passes]
  rw [rootMaskSemanticGroup0021Part08_passes]
  rw [rootMaskSemanticGroup0021Part09_passes]
  rw [rootMaskSemanticGroup0021Part10_passes]
  rw [rootMaskSemanticGroup0021Part11_passes]
  rw [rootMaskSemanticGroup0021Part12_passes]
  rw [rootMaskSemanticGroup0021Part13_passes]
  rw [rootMaskSemanticGroup0021Part14_passes]
  rw [rootMaskSemanticGroup0021Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
