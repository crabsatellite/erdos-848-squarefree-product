import Erdos848.TailPrimeRankBoundaryChecker
import Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.Certificate

namespace Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def boundaryPrefixTree0053 : Erdos848.PrimeIntervalProofTree
    2 236848 20969 :=
  (.node Erdos848.GeneratedTailPrimeIntervalCoverage.fullTree
    (.node (.node (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0000 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0001) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0002 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0003)) (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0004 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0005) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0006 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0007))) (.node (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0008 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0009) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0010 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0011)) (.node (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0012 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0013) (.node Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0014 Erdos848.GeneratedTenMillionKernelPrimeIntervalCoverage.blockTree0015)))))

theorem primeCounting_blockEnd0053 :
    Nat.primeCounting 236849 = 20969 := by
  exact boundaryPrefixTree0053.primeCounting_eq (by decide)

end Erdos848.GeneratedTailTenMillionKernelRootJumpCoverage
