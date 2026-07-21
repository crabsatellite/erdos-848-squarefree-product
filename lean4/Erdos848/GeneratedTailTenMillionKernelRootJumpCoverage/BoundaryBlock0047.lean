import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Certificate

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def boundaryPrefixTree0047 : Erdos848.PrimeIntervalProofTree
    2 224560 19983 :=
  (.node Erdos848.GeneratedTailPrimeIntervalCoverage.fullTree
    (.node (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0001) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0002 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0003 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0004))) (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0005 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0006) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0007 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0008 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0009)))))

theorem primeCounting_blockEnd0047 :
    Nat.primeCounting 224561 = 19983 := by
  exact boundaryPrefixTree0047.primeCounting_eq (by decide)

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
