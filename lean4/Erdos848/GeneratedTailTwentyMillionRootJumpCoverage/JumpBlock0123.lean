import Erdos848.TailTwentyMillionRootProfileChecker
import Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.Block0123

namespace Erdos848.GeneratedTailTwentyMillionRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0123_passes :
    Erdos848.GeneratedTwentyMillionPrimeIntervalCoverage.blockTree0123.allPrimeRanks 38162
      Erdos848.twentyMillionRootPrimeJumpPasses = true := by
  with_unfolding_all decide

end Erdos848.GeneratedTailTwentyMillionRootJumpCoverage
