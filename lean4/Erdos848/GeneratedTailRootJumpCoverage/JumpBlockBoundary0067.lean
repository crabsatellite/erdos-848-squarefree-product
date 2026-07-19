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
import Erdos848.GeneratedTailPrimeIntervalCoverage.Block0065
import Erdos848.GeneratedTailPrimeIntervalCoverage.Block0066

namespace Erdos848.GeneratedTailRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def jumpBlockBoundaryTree0067 : Erdos848.PrimeIntervalProofTree
    2 137216 12777 :=
  (.node (.node (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0000 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0001) (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0002 (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0003 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0004))) (.node (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0005 (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0006 Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0000)) (.node Erdos848.GeneratedTailRootJumpCoverage.jumpGroup0001 (.node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0065 Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0066))))

theorem primeCounting_blockBoundary0067 :
    Nat.primeCounting 137217 = 12777 := by
  exact jumpBlockBoundaryTree0067.primeCounting_eq (by decide)

#print axioms primeCounting_blockBoundary0067

end Erdos848.GeneratedTailRootJumpCoverage
