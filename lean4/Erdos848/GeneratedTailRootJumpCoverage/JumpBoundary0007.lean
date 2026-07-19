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
import Erdos848.GeneratedTailRootJumpCoverage.JumpGroup0005
import Erdos848.GeneratedTailRootJumpCoverage.JumpGroup0006

namespace Erdos848.GeneratedTailRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def jumpBoundaryTree0007 : Erdos848.PrimeIntervalProofTree
    2 204080 18311 :=
  (.node (.node (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0000 (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0001 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0002)) (.node (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0003 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0004) (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0005 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0006))) (.node (.node Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0000 (.node Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0001 Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0002)) (.node (.node Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0003 Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0004) (.node Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0005 Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0006))))

theorem primeCounting_jumpBoundary0007 :
    Nat.primeCounting 204081 = 18311 := by
  exact jumpBoundaryTree0007.primeCounting_eq (by decide)

#print axioms primeCounting_jumpBoundary0007

end Erdos848.GeneratedTailRootJumpCoverage
