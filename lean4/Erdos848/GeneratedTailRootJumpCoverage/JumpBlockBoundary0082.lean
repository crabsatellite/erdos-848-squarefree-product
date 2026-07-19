import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0000
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0001
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0002
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0003
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0004
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0005
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0006
import Erdos848.GeneratedTailRootJumpCoverage.JumpGroup0000
import Erdos848.GeneratedTailRootJumpCoverage.JumpGroup0001
import Erdos848.GeneratedTailRootJumpCoverage.JumpGroup0002
import Erdos848.GeneratedTailRootJumpCoverage.JumpGroup0003
import Erdos848.GeneratedTailPrimeIntervalCoverage.Block0081

namespace Erdos848.GeneratedTailRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def jumpBlockBoundaryTree0082 : Erdos848.PrimeIntervalProofTree
    2 167936 15334 :=
  (.node (.node (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0000 (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0001 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0002)) (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0003 (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0004 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0005))) (.node (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0006 (.node Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0000 Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0001)) (.node Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0002 (.node Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0003 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0081))))

theorem primeCounting_blockBoundary0082 :
    Nat.primeCounting 167937 = 15334 := by
  exact jumpBlockBoundaryTree0082.primeCounting_eq (by decide)

#print axioms primeCounting_blockBoundary0082

end Erdos848.GeneratedTailRootJumpCoverage
