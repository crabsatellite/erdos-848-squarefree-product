import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0020Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0020Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0020Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0020Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0020Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0020Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0020Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0020Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0020Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0020Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0020Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0020Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0020Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0020Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0020Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0020Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0020 : List ℕ :=
  [2141, 2143, 2153, 2161, 2179, 2203, 2207, 2213, 2221, 2237, 2239, 2243, 2251, 2267, 2269, 2273]

theorem rootMaskSemanticGroup0020_passes :
    rootMaskSemanticGroup0020.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0020
        rootTwistQrMaskWords0020) = true := by
  rw [show rootMaskSemanticGroup0020 =
      rootMaskSemanticGroup0020Part00 ++
      rootMaskSemanticGroup0020Part01 ++
      rootMaskSemanticGroup0020Part02 ++
      rootMaskSemanticGroup0020Part03 ++
      rootMaskSemanticGroup0020Part04 ++
      rootMaskSemanticGroup0020Part05 ++
      rootMaskSemanticGroup0020Part06 ++
      rootMaskSemanticGroup0020Part07 ++
      rootMaskSemanticGroup0020Part08 ++
      rootMaskSemanticGroup0020Part09 ++
      rootMaskSemanticGroup0020Part10 ++
      rootMaskSemanticGroup0020Part11 ++
      rootMaskSemanticGroup0020Part12 ++
      rootMaskSemanticGroup0020Part13 ++
      rootMaskSemanticGroup0020Part14 ++
      rootMaskSemanticGroup0020Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0020Part00_passes]
  rw [rootMaskSemanticGroup0020Part01_passes]
  rw [rootMaskSemanticGroup0020Part02_passes]
  rw [rootMaskSemanticGroup0020Part03_passes]
  rw [rootMaskSemanticGroup0020Part04_passes]
  rw [rootMaskSemanticGroup0020Part05_passes]
  rw [rootMaskSemanticGroup0020Part06_passes]
  rw [rootMaskSemanticGroup0020Part07_passes]
  rw [rootMaskSemanticGroup0020Part08_passes]
  rw [rootMaskSemanticGroup0020Part09_passes]
  rw [rootMaskSemanticGroup0020Part10_passes]
  rw [rootMaskSemanticGroup0020Part11_passes]
  rw [rootMaskSemanticGroup0020Part12_passes]
  rw [rootMaskSemanticGroup0020Part13_passes]
  rw [rootMaskSemanticGroup0020Part14_passes]
  rw [rootMaskSemanticGroup0020Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
