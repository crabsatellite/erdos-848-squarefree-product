import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Certificate

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def boundaryPrefixTree0048 : Erdos848.PrimeIntervalProofTree
    2 226608 20150 :=
  (.node Erdos848.GeneratedTailPrimeIntervalCoverage.fullTree
    (.node (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0001) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0002 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0003 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0004))) (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0005 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0006 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0007)) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0008 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0009 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0010)))))

theorem primeCounting_blockEnd0048 :
    Nat.primeCounting 226609 = 20150 := by
  exact boundaryPrefixTree0048.primeCounting_eq (by decide)

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
