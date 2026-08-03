import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0015Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0015Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0015Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0015Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0015Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0015Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0015Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0015Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0015Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0015Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0015Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0015Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0015Part12
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0015Part13
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0015Part14
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0015Part15

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0015 : List ℕ :=
  [1543, 1549, 1553, 1559, 1567, 1571, 1579, 1583, 1597, 1601, 1607, 1609, 1613, 1619, 1621, 1627]

theorem rootMaskSemanticGroup0015_passes :
    rootMaskSemanticGroup0015.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0015
        rootTwistQrMaskWords0015) = true := by
  rw [show rootMaskSemanticGroup0015 =
      rootMaskSemanticGroup0015Part00 ++
      rootMaskSemanticGroup0015Part01 ++
      rootMaskSemanticGroup0015Part02 ++
      rootMaskSemanticGroup0015Part03 ++
      rootMaskSemanticGroup0015Part04 ++
      rootMaskSemanticGroup0015Part05 ++
      rootMaskSemanticGroup0015Part06 ++
      rootMaskSemanticGroup0015Part07 ++
      rootMaskSemanticGroup0015Part08 ++
      rootMaskSemanticGroup0015Part09 ++
      rootMaskSemanticGroup0015Part10 ++
      rootMaskSemanticGroup0015Part11 ++
      rootMaskSemanticGroup0015Part12 ++
      rootMaskSemanticGroup0015Part13 ++
      rootMaskSemanticGroup0015Part14 ++
      rootMaskSemanticGroup0015Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0015Part00_passes]
  rw [rootMaskSemanticGroup0015Part01_passes]
  rw [rootMaskSemanticGroup0015Part02_passes]
  rw [rootMaskSemanticGroup0015Part03_passes]
  rw [rootMaskSemanticGroup0015Part04_passes]
  rw [rootMaskSemanticGroup0015Part05_passes]
  rw [rootMaskSemanticGroup0015Part06_passes]
  rw [rootMaskSemanticGroup0015Part07_passes]
  rw [rootMaskSemanticGroup0015Part08_passes]
  rw [rootMaskSemanticGroup0015Part09_passes]
  rw [rootMaskSemanticGroup0015Part10_passes]
  rw [rootMaskSemanticGroup0015Part11_passes]
  rw [rootMaskSemanticGroup0015Part12_passes]
  rw [rootMaskSemanticGroup0015Part13_passes]
  rw [rootMaskSemanticGroup0015Part14_passes]
  rw [rootMaskSemanticGroup0015Part15_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
