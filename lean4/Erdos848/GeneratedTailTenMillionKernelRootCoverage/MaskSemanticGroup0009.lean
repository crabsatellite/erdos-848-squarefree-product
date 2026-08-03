import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0009Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0009Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0009Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0009Part03

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0009 : List ℕ :=
  [853, 857, 859, 863, 877, 881, 883, 887, 907, 911, 919, 929, 937, 941, 947, 953]

theorem rootMaskSemanticGroup0009_passes :
    rootMaskSemanticGroup0009.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0009
        rootTwistQrMaskWords0009) = true := by
  rw [show rootMaskSemanticGroup0009 =
      rootMaskSemanticGroup0009Part00 ++
      rootMaskSemanticGroup0009Part01 ++
      rootMaskSemanticGroup0009Part02 ++
      rootMaskSemanticGroup0009Part03 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0009Part00_passes]
  rw [rootMaskSemanticGroup0009Part01_passes]
  rw [rootMaskSemanticGroup0009Part02_passes]
  rw [rootMaskSemanticGroup0009Part03_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
