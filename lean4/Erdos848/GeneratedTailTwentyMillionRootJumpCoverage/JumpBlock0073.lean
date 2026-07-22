import Erdos848.TailTwentyMillionRootProfileChecker
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0073

namespace Erdos848.GeneratedTailTwentyMillionRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0073_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0073.allPrimeRanks 30256
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

end Erdos848.GeneratedTailTwentyMillionRootJumpCoverage
