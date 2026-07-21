import Erdos848.TailTenMillionKernelRootProfileChecker
import Erdos848.GeneratedTailPrimeIntervalCoverage.Block0080

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootJumpBlock0018_passes :
    Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0080.allPrimeRanks 15000
      Erdos848.tenMillionKernelRootPrimeJumpPasses = true := by
  with_unfolding_all decide

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
