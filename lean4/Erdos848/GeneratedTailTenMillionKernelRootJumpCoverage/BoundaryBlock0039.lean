import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Certificate

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def boundaryPrefixTree0039 : Erdos848.PrimeIntervalProofTree
    2 208176 18649 :=
  (.node Erdos848.GeneratedTailPrimeIntervalCoverage.fullTree
    (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0001))

theorem primeCounting_blockEnd0039 :
    Nat.primeCounting 208177 = 18649 := by
  exact boundaryPrefixTree0039.primeCounting_eq (by decide)

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
