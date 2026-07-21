import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0019Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0019Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0019Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0019Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0019Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0019Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0019Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0019Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0019Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0019Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0019Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0019Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0019Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0019Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0019Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0019Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0019 : List ℕ :=
  [2027, 2029, 2039, 2053, 2063, 2069, 2081, 2083, 2087, 2089, 2099, 2111, 2113, 2129, 2131, 2137]

theorem rootMaskSemanticGroup0019_passes :
    rootMaskSemanticGroup0019.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0019
        rootTwistQrMaskWords0019) = true := by
  rw [show rootMaskSemanticGroup0019 =
      rootMaskSemanticGroup0019Part00 ++
      rootMaskSemanticGroup0019Part01 ++
      rootMaskSemanticGroup0019Part02 ++
      rootMaskSemanticGroup0019Part03 ++
      rootMaskSemanticGroup0019Part04 ++
      rootMaskSemanticGroup0019Part05 ++
      rootMaskSemanticGroup0019Part06 ++
      rootMaskSemanticGroup0019Part07 ++
      rootMaskSemanticGroup0019Part08 ++
      rootMaskSemanticGroup0019Part09 ++
      rootMaskSemanticGroup0019Part10 ++
      rootMaskSemanticGroup0019Part11 ++
      rootMaskSemanticGroup0019Part12 ++
      rootMaskSemanticGroup0019Part13 ++
      rootMaskSemanticGroup0019Part14 ++
      rootMaskSemanticGroup0019Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0019Part00_passes]
  rw [rootMaskSemanticGroup0019Part01_passes]
  rw [rootMaskSemanticGroup0019Part02_passes]
  rw [rootMaskSemanticGroup0019Part03_passes]
  rw [rootMaskSemanticGroup0019Part04_passes]
  rw [rootMaskSemanticGroup0019Part05_passes]
  rw [rootMaskSemanticGroup0019Part06_passes]
  rw [rootMaskSemanticGroup0019Part07_passes]
  rw [rootMaskSemanticGroup0019Part08_passes]
  rw [rootMaskSemanticGroup0019Part09_passes]
  rw [rootMaskSemanticGroup0019Part10_passes]
  rw [rootMaskSemanticGroup0019Part11_passes]
  rw [rootMaskSemanticGroup0019Part12_passes]
  rw [rootMaskSemanticGroup0019Part13_passes]
  rw [rootMaskSemanticGroup0019Part14_passes]
  rw [rootMaskSemanticGroup0019Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
