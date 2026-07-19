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
import Erdos848.GeneratedTailRootJumpCoverage.JumpGroup0004
import Erdos848.GeneratedTailPrimeIntervalCoverage.Block0089

namespace Erdos848.GeneratedTailRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def jumpBlockBoundaryTree0090 : Erdos848.PrimeIntervalProofTree
    2 184320 16691 :=
  (.node (.node (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0000 (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0001 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0002)) (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0003 (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0004 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0005))) (.node (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0006 (.node Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0000 Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0001)) (.node (.node Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0002 Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0003) (.node Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0004 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0089))))

theorem primeCounting_blockBoundary0090 :
    Nat.primeCounting 184321 = 16691 := by
  exact jumpBlockBoundaryTree0090.primeCounting_eq (by decide)

#print axioms primeCounting_blockBoundary0090

end Erdos848.GeneratedTailRootJumpCoverage
