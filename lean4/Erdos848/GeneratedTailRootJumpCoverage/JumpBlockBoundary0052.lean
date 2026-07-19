import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0000
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0001
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0002
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0003
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0004
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0005
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0006
import Erdos848.GeneratedTailPrimeIntervalCoverage.Block0049
import Erdos848.GeneratedTailPrimeIntervalCoverage.Block0050
import Erdos848.GeneratedTailPrimeIntervalCoverage.Block0051

namespace Erdos848.GeneratedTailRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def jumpBlockBoundaryTree0052 : Erdos848.PrimeIntervalProofTree
    2 106496 10151 :=
  (.node (.node (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0000 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0001) (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0002 (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0003 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0004))) (.node (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0005 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0006) (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0049 (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0050 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0051))))

theorem primeCounting_blockBoundary0052 :
    Nat.primeCounting 106497 = 10151 := by
  exact jumpBlockBoundaryTree0052.primeCounting_eq (by decide)

#print axioms primeCounting_blockBoundary0052

end Erdos848.GeneratedTailRootJumpCoverage
