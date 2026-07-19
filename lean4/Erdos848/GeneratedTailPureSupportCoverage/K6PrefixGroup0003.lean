import Erdos848.TailPureSupportChecker
import Erdos848.GeneratedTailSupportProfileCoverage.K6PrefixGroup0003

namespace Erdos848.GeneratedTailPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k6PrefixGroup0003_pure_passes :
    Erdos848.GeneratedTailSupportProfileCoverage.k6PrefixGroup0003.all
      (Erdos848.pureFiveMillionSupportPrefixPasses 6) = true := by
  decide

end Erdos848.GeneratedTailPureSupportCoverage
