import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0013

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup0013 : List ℕ :=
  [1297, 1301, 1303, 1307, 1319, 1321, 1327, 1361, 1367, 1373, 1381, 1399, 1409, 1423, 1427, 1429]

theorem maskSemanticGroup0013_passes :
    maskSemanticGroup0013.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords0013 twistQrMaskWords0013) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
