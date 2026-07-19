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

namespace Erdos848.GeneratedTailRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def jumpBoundaryTree0002 : Erdos848.PrimeIntervalProofTree
    2 133120 12426 :=
  (.node (.node (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0000 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0001) (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0002 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0003)) (.node (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0004 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0005) (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0006 (.node Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0000 Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0001))))

theorem primeCounting_jumpBoundary0002 :
    Nat.primeCounting 133121 = 12426 := by
  exact jumpBoundaryTree0002.primeCounting_eq (by decide)

#print axioms primeCounting_jumpBoundary0002

end Erdos848.GeneratedTailRootJumpCoverage
