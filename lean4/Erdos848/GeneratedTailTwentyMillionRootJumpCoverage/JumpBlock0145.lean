import Erdos848.TailTwentyMillionRootProfileChecker
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0145

namespace Erdos848.GeneratedTailTwentyMillionRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0145_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0145.allPrimeRanks 41623
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

end Erdos848.GeneratedTailTwentyMillionRootJumpCoverage
