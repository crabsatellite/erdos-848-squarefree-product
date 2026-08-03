import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0008Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0008Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0008Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0008Part03

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0008 : List ℕ :=
  [739, 743, 751, 757, 761, 769, 773, 787, 797, 809, 811, 821, 823, 827, 829, 839]

theorem rootMaskSemanticGroup0008_passes :
    rootMaskSemanticGroup0008.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0008
        rootTwistQrMaskWords0008) = true := by
  rw [show rootMaskSemanticGroup0008 =
      rootMaskSemanticGroup0008Part00 ++
      rootMaskSemanticGroup0008Part01 ++
      rootMaskSemanticGroup0008Part02 ++
      rootMaskSemanticGroup0008Part03 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0008Part00_passes]
  rw [rootMaskSemanticGroup0008Part01_passes]
  rw [rootMaskSemanticGroup0008Part02_passes]
  rw [rootMaskSemanticGroup0008Part03_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
