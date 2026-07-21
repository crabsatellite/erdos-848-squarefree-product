import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Certificate

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def boundaryPrefixTree0040 : Erdos848.PrimeIntervalProofTree
    2 210224 18828 :=
  (.node Erdos848.GeneratedTailPrimeIntervalCoverage.fullTree
    (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0001 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0002)))

theorem primeCounting_blockEnd0040 :
    Nat.primeCounting 210225 = 18828 := by
  exact boundaryPrefixTree0040.primeCounting_eq (by decide)

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
