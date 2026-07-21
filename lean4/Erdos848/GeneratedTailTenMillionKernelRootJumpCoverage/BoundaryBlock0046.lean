import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Certificate

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def boundaryPrefixTree0046 : Erdos848.PrimeIntervalProofTree
    2 222512 19819 :=
  (.node Erdos848.GeneratedTailPrimeIntervalCoverage.fullTree
    (.node (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0001) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0002 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0003)) (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0004 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0005) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0006 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0007 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0008)))))

theorem primeCounting_blockEnd0046 :
    Nat.primeCounting 222513 = 19819 := by
  exact boundaryPrefixTree0046.primeCounting_eq (by decide)

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
