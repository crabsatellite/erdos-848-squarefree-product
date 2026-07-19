import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0073
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0074
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0075
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0076
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0077
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0078
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0079
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0080

namespace Erdos848.GeneratedTailRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def jumpGroup0003 : Erdos848.PrimeIntervalProofTree
    149506 16384 1360 :=
  (.node (.node (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0073 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0074) (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0075 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0076)) (.node (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0077 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0078) (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0079 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0080)))

theorem jumpGroup0003_passes :
    jumpGroup0003.allPrimeRanks 13807
      Erdos848.fiveMillionOddRoot7JumpPasses = true := by
  simp only [jumpGroup0003, Erdos848.PrimeIntervalProofTree.allPrimeRanks,
    jumpBlock0073_passes, jumpBlock0074_passes, jumpBlock0075_passes, jumpBlock0076_passes, jumpBlock0077_passes, jumpBlock0078_passes, jumpBlock0079_passes, jumpBlock0080_passes, Bool.true_and, Nat.reduceAdd]

end Erdos848.GeneratedTailRootJumpCoverage
