import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Certificate

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def boundaryPrefixTree0043 : Erdos848.PrimeIntervalProofTree
    2 216368 19312 :=
  (.node Erdos848.GeneratedTailPrimeIntervalCoverage.fullTree
    (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0001 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0002)) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0003 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0004 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0005))))

theorem primeCounting_blockEnd0043 :
    Nat.primeCounting 216369 = 19312 := by
  exact boundaryPrefixTree0043.primeCounting_eq (by decide)

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
