import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Certificate

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def boundaryPrefixTree0052 : Erdos848.PrimeIntervalProofTree
    2 234800 20814 :=
  (.node Erdos848.GeneratedTailPrimeIntervalCoverage.fullTree
    (.node (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0001 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0002)) (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0003 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0004) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0005 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0006))) (.node (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0007 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0008) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0009 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0010)) (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0011 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0012) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0013 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0014)))))

theorem primeCounting_blockEnd0052 :
    Nat.primeCounting 234801 = 20814 := by
  exact boundaryPrefixTree0052.primeCounting_eq (by decide)

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
