import Erdos848.TailPureSupportChecker
import Erdos848.GeneratedTailSupportCoverage.PrefixGroup0025

namespace Erdos848.GeneratedTailPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem prefixGroup0025_pure_passes :
    Erdos848.GeneratedTailSupportCoverage.prefixGroup0025.all
      (Erdos848.pureFiveMillionSupportPrefixPasses 13) = true := by
  decide

end Erdos848.GeneratedTailPureSupportCoverage
