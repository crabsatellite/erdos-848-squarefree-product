import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Certificate

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def boundaryPrefixTree0058 : Erdos848.PrimeIntervalProofTree
    2 247088 21804 :=
  (.node Erdos848.GeneratedTailPrimeIntervalCoverage.fullTree
    (.node (.node (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0001) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0002 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0003 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0004))) (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0005 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0006) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0007 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0008 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0009)))) (.node (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0010 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0011) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0012 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0013 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0014))) (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0015 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0016 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0017)) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0018 (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0019 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0020))))))

theorem primeCounting_blockEnd0058 :
    Nat.primeCounting 247089 = 21804 := by
  exact boundaryPrefixTree0058.primeCounting_eq (by decide)

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
