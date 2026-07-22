import Erdos848.TailTwentyMillionRootProfileChecker
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0084

namespace Erdos848.GeneratedTailTwentyMillionRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0084_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0084.allPrimeRanks 31999
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

end Erdos848.GeneratedTailTwentyMillionRootJumpCoverage
