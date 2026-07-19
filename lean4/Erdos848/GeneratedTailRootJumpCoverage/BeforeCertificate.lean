import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0000
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0001
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0002
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0003
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0004
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0005
import Erdos848.GeneratedTailRootJumpCoverage.BeforeGroup0006

namespace Erdos848.GeneratedTailRootJumpCoverage

def beforeJumpTree : Erdos848.PrimeIntervalProofTree
    2 100352 9618 :=
  (.node (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0000 (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0001 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0002)) (.node (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0003 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0004) (.node Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0005 Erdos848.GeneratedTailRootJumpCoverage.beforeGroup0006)))

theorem primeCounting_100353 :
    Nat.primeCounting 100353 = 9618 := by
  exact beforeJumpTree.primeCounting_eq (by decide)

#print axioms primeCounting_100353

end Erdos848.GeneratedTailRootJumpCoverage
