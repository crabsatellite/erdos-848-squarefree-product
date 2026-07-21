import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Certificate

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def boundaryPrefixTree0050 : Erdos848.PrimeIntervalProofTree
    2 230704 20496 :=
  (.node Erdos848.GeneratedTailPrimeIntervalCoverage.fullTree
    (.node (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0001 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0002)) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0003 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0004 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0005))) (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0006 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0007 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0008)) (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0009 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0010) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0011 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0012)))))

theorem primeCounting_blockEnd0050 :
    Nat.primeCounting 230705 = 20496 := by
  exact boundaryPrefixTree0050.primeCounting_eq (by decide)

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
