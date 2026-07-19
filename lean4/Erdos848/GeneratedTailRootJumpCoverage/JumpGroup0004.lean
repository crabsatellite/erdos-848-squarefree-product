import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0081
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0082
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0083
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0084
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0085
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0086
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0087
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0088

namespace Erdos848.GeneratedTailRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def jumpGroup0004 : Erdos848.PrimeIntervalProofTree
    165890 16384 1352 :=
  (.node (.node (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0081 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0082) (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0083 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0084)) (.node (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0085 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0086) (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0087 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0088)))

theorem jumpGroup0004_passes :
    jumpGroup0004.allPrimeRanks 15167
      Erdos848.fiveMillionOddRoot7JumpPasses = true := by
  simp only [jumpGroup0004, Erdos848.PrimeIntervalProofTree.allPrimeRanks,
    jumpBlock0081_passes, jumpBlock0082_passes, jumpBlock0083_passes, jumpBlock0084_passes, jumpBlock0085_passes, jumpBlock0086_passes, jumpBlock0087_passes, jumpBlock0088_passes, Bool.true_and, Nat.reduceAdd]

end Erdos848.GeneratedTailRootJumpCoverage
