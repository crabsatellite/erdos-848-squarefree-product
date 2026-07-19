import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0097
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0098
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0099

namespace Erdos848.GeneratedTailRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def jumpGroup0006 : Erdos848.PrimeIntervalProofTree
    198658 5424 434 :=
  (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0097 (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0098 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0099))

theorem jumpGroup0006_passes :
    jumpGroup0006.allPrimeRanks 17877
      Erdos848.fiveMillionOddRoot7JumpPasses = true := by
  simp only [jumpGroup0006, Erdos848.PrimeIntervalProofTree.allPrimeRanks,
    jumpBlock0097_passes, jumpBlock0098_passes, jumpBlock0099_passes, Bool.true_and, Nat.reduceAdd]

end Erdos848.GeneratedTailRootJumpCoverage
