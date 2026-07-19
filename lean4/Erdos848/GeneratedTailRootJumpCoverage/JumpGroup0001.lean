import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0057
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0058
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0059
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0060
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0061
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0062
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0063
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0064

namespace Erdos848.GeneratedTailRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def jumpGroup0001 : Erdos848.PrimeIntervalProofTree
    116738 16384 1405 :=
  (.node (.node (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0057 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0058) (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0059 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0060)) (.node (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0061 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0062) (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0063 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0064)))

theorem jumpGroup0001_passes :
    jumpGroup0001.allPrimeRanks 11021
      Erdos848.fiveMillionOddRoot7JumpPasses = true := by
  simp only [jumpGroup0001, Erdos848.PrimeIntervalProofTree.allPrimeRanks,
    jumpBlock0057_passes, jumpBlock0058_passes, jumpBlock0059_passes, jumpBlock0060_passes, jumpBlock0061_passes, jumpBlock0062_passes, jumpBlock0063_passes, jumpBlock0064_passes, Bool.true_and, Nat.reduceAdd]

end Erdos848.GeneratedTailRootJumpCoverage
