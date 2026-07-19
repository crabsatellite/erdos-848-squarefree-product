import Erdos848.TailGlobalMixedSupportCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup0000

namespace Erdos848

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2Probe : List (List ℕ × ℕ) :=
  [([3], 7), ([7], 11), ([11], 13), ([13], 17),
   ([17], 19), ([19], 23), ([23], 29), ([29], 31)]

theorem k2Probe_passes :
    k2Probe.all (fun row => globalMixedCorePrefixPasses
      GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000
      GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000
      2 (max 5_000_000 (row.1.prod * row.2)) row.1) = true := by
  rfl

end Erdos848
