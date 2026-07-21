import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0018Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0018Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0018Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0018Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0018Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0018Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0018Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0018Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0018Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0018Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0018Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0018Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0018Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0018Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0018Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0018Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0018 : List ℕ :=
  [1901, 1907, 1913, 1931, 1933, 1949, 1951, 1973, 1979, 1987, 1993, 1997, 1999, 2003, 2011, 2017]

theorem rootMaskSemanticGroup0018_passes :
    rootMaskSemanticGroup0018.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0018
        rootTwistQrMaskWords0018) = true := by
  rw [show rootMaskSemanticGroup0018 =
      rootMaskSemanticGroup0018Part00 ++
      rootMaskSemanticGroup0018Part01 ++
      rootMaskSemanticGroup0018Part02 ++
      rootMaskSemanticGroup0018Part03 ++
      rootMaskSemanticGroup0018Part04 ++
      rootMaskSemanticGroup0018Part05 ++
      rootMaskSemanticGroup0018Part06 ++
      rootMaskSemanticGroup0018Part07 ++
      rootMaskSemanticGroup0018Part08 ++
      rootMaskSemanticGroup0018Part09 ++
      rootMaskSemanticGroup0018Part10 ++
      rootMaskSemanticGroup0018Part11 ++
      rootMaskSemanticGroup0018Part12 ++
      rootMaskSemanticGroup0018Part13 ++
      rootMaskSemanticGroup0018Part14 ++
      rootMaskSemanticGroup0018Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0018Part00_passes]
  rw [rootMaskSemanticGroup0018Part01_passes]
  rw [rootMaskSemanticGroup0018Part02_passes]
  rw [rootMaskSemanticGroup0018Part03_passes]
  rw [rootMaskSemanticGroup0018Part04_passes]
  rw [rootMaskSemanticGroup0018Part05_passes]
  rw [rootMaskSemanticGroup0018Part06_passes]
  rw [rootMaskSemanticGroup0018Part07_passes]
  rw [rootMaskSemanticGroup0018Part08_passes]
  rw [rootMaskSemanticGroup0018Part09_passes]
  rw [rootMaskSemanticGroup0018Part10_passes]
  rw [rootMaskSemanticGroup0018Part11_passes]
  rw [rootMaskSemanticGroup0018Part12_passes]
  rw [rootMaskSemanticGroup0018Part13_passes]
  rw [rootMaskSemanticGroup0018Part14_passes]
  rw [rootMaskSemanticGroup0018Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
