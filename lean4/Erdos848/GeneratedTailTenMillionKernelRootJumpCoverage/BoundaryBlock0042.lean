import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Certificate

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def boundaryPrefixTree0042 : Erdos848.PrimeIntervalProofTree
    2 214320 19155 :=
  (.node Erdos848.GeneratedTailPrimeIntervalCoverage.fullTree
    (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0001) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0002 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0003 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0004))))

theorem primeCounting_blockEnd0042 :
    Nat.primeCounting 214321 = 19155 := by
  exact boundaryPrefixTree0042.primeCounting_eq (by decide)

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
