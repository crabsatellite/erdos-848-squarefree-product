import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Certificate

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def boundaryPrefixTree0051 : Erdos848.PrimeIntervalProofTree
    2 232752 20657 :=
  (.node Erdos848.GeneratedTailPrimeIntervalCoverage.fullTree
    (.node (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0001 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0002)) (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0003 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0004) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0005 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0006))) (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0007 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0008 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0009)) (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0010 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0011) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0012 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0013)))))

theorem primeCounting_blockEnd0051 :
    Nat.primeCounting 232753 = 20657 := by
  exact boundaryPrefixTree0051.primeCounting_eq (by decide)

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
