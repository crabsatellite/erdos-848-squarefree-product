import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0089
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0090
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0091
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0092
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0093
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0094
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0095
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0096

namespace Erdos848.GeneratedTailRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def jumpGroup0005 : Erdos848.PrimeIntervalProofTree
    182274 16384 1358 :=
  (.node (.node (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0089 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0090) (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0091 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0092)) (.node (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0093 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0094) (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0095 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0096)))

theorem jumpGroup0005_passes :
    jumpGroup0005.allPrimeRanks 16519
      Erdos848.fiveMillionOddRoot7JumpPasses = true := by
  simp only [jumpGroup0005, Erdos848.PrimeIntervalProofTree.allPrimeRanks,
    jumpBlock0089_passes, jumpBlock0090_passes, jumpBlock0091_passes, jumpBlock0092_passes, jumpBlock0093_passes, jumpBlock0094_passes, jumpBlock0095_passes, jumpBlock0096_passes, Bool.true_and, Nat.reduceAdd]

end Erdos848.GeneratedTailRootJumpCoverage
