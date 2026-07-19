import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0065
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0066
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0067
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0068
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0069
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0070
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0071
import Erdos848.GeneratedTailRootJumpCoverage.JumpBlock0072

namespace Erdos848.GeneratedTailRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def jumpGroup0002 : Erdos848.PrimeIntervalProofTree
    133122 16384 1381 :=
  (.node (.node (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0065 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0066) (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0067 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0068)) (.node (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0069 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0070) (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0071 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0072)))

theorem jumpGroup0002_passes :
    jumpGroup0002.allPrimeRanks 12426
      Erdos848.fiveMillionOddRoot7JumpPasses = true := by
  simp only [jumpGroup0002, Erdos848.PrimeIntervalProofTree.allPrimeRanks,
    jumpBlock0065_passes, jumpBlock0066_passes, jumpBlock0067_passes, jumpBlock0068_passes, jumpBlock0069_passes, jumpBlock0070_passes, jumpBlock0071_passes, jumpBlock0072_passes, Bool.true_and, Nat.reduceAdd]

end Erdos848.GeneratedTailRootJumpCoverage
