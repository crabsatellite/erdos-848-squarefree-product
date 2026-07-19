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
import Erdos848.GeneratedTailPrimeIntervalCoverage.Block0052

namespace Erdos848.GeneratedTailRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def jumpBlockBoundaryTree0053 : Erdos848.PrimeIntervalProofTree
    2 108544 10324 :=
  (.node (.node (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0000 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0001) (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0002 (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0003 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0004))) (.node (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0005 (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0006 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0049)) (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0050 (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0051 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0052))))

theorem primeCounting_blockBoundary0053 :
    Nat.primeCounting 108545 = 10324 := by
  exact jumpBlockBoundaryTree0053.primeCounting_eq (by decide)

#print axioms primeCounting_blockBoundary0053

end Erdos848.GeneratedTailRootJumpCoverage
