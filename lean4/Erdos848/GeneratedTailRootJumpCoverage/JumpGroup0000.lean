import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0049
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0050
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0051
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0052
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0053
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0054
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0055
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0056

namespace Erdos848.GeneratedTailRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def jumpGroup0000 : Erdos848.PrimeIntervalProofTree
    100354 16384 1403 :=
  (.node (.node (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0049 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0050) (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0051 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0052)) (.node (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0053 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0054) (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0055 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0056)))

theorem jumpGroup0000_passes :
    jumpGroup0000.allPrimeRanks 9618
      Erdos848.fiveMillionOddRoot7JumpPasses = true := by
  simp only [jumpGroup0000, Erdos848.PrimeIntervalProofTree.allPrimeRanks,
    jumpBlock0049_passes, jumpBlock0050_passes, jumpBlock0051_passes, jumpBlock0052_passes, jumpBlock0053_passes, jumpBlock0054_passes, jumpBlock0055_passes, jumpBlock0056_passes, Bool.true_and, Nat.reduceAdd]

end Erdos848.GeneratedTailRootJumpCoverage
