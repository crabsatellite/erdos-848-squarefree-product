import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Certificate

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def boundaryPrefixTree0045 : Erdos848.PrimeIntervalProofTree
    2 220464 19651 :=
  (.node Erdos848.GeneratedTailPrimeIntervalCoverage.fullTree
    (.node (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0001) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0002 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0003)) (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0004 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0005) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0006 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0007))))

theorem primeCounting_blockEnd0045 :
    Nat.primeCounting 220465 = 19651 := by
  exact boundaryPrefixTree0045.primeCounting_eq (by decide)

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
