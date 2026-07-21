import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Certificate

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def boundaryPrefixTree0038 : Erdos848.PrimeIntervalProofTree
    2 206128 18476 :=
  (.node Erdos848.GeneratedTailPrimeIntervalCoverage.fullTree
    Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000)

theorem primeCounting_blockEnd0038 :
    Nat.primeCounting 206129 = 18476 := by
  exact boundaryPrefixTree0038.primeCounting_eq (by decide)

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
