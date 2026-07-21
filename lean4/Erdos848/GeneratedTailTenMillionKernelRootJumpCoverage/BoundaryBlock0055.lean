import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Certificate

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def boundaryPrefixTree0055 : Erdos848.PrimeIntervalProofTree
    2 240944 21297 :=
  (.node Erdos848.GeneratedTailPrimeIntervalCoverage.fullTree
    (.node (.node (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0001) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0002 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0003)) (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0004 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0005) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0006 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0007 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0008)))) (.node (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0009 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0010) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0011 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0012)) (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0013 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0014) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0015 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0016 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0017))))))

theorem primeCounting_blockEnd0055 :
    Nat.primeCounting 240945 = 21297 := by
  exact boundaryPrefixTree0055.primeCounting_eq (by decide)

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
