import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0037Part00
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0037Part01
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0037Part02
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0037Part03
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0037Part04
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0037Part05
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0037Part06
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0037Part07
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0037Part08
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0037Part09
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0037Part10
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0037Part11
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.MaskSemanticGroup0037Part12

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def rootMaskSemanticGroup0037 : List ℕ :=
  [4357, 4363, 4373, 4391, 4397, 4409, 4421, 4423, 4441, 4447, 4451, 4457, 4463]

theorem rootMaskSemanticGroup0037_passes :
    rootMaskSemanticGroup0037.all
      (Erdos848.tenMillionKernelRootMaskPassesWith
        rootNormalQrMaskWords0037
        rootTwistQrMaskWords0037) = true := by
  rw [show rootMaskSemanticGroup0037 =
      rootMaskSemanticGroup0037Part00 ++
      rootMaskSemanticGroup0037Part01 ++
      rootMaskSemanticGroup0037Part02 ++
      rootMaskSemanticGroup0037Part03 ++
      rootMaskSemanticGroup0037Part04 ++
      rootMaskSemanticGroup0037Part05 ++
      rootMaskSemanticGroup0037Part06 ++
      rootMaskSemanticGroup0037Part07 ++
      rootMaskSemanticGroup0037Part08 ++
      rootMaskSemanticGroup0037Part09 ++
      rootMaskSemanticGroup0037Part10 ++
      rootMaskSemanticGroup0037Part11 ++
      rootMaskSemanticGroup0037Part12 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0037Part00_passes]
  rw [rootMaskSemanticGroup0037Part01_passes]
  rw [rootMaskSemanticGroup0037Part02_passes]
  rw [rootMaskSemanticGroup0037Part03_passes]
  rw [rootMaskSemanticGroup0037Part04_passes]
  rw [rootMaskSemanticGroup0037Part05_passes]
  rw [rootMaskSemanticGroup0037Part06_passes]
  rw [rootMaskSemanticGroup0037Part07_passes]
  rw [rootMaskSemanticGroup0037Part08_passes]
  rw [rootMaskSemanticGroup0037Part09_passes]
  rw [rootMaskSemanticGroup0037Part10_passes]
  rw [rootMaskSemanticGroup0037Part11_passes]
  rw [rootMaskSemanticGroup0037Part12_passes]
  rfl

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
