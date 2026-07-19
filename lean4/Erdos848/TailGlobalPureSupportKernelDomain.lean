import Erdos848.TailGlobalPureSupportChecker
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainData

namespace Erdos848

/-- Kernel-reducible structural enumeration.  Its candidate list is explicit,
so equality certificates do not ask the kernel to evaluate `primesBelow`. -/
def globalOddRootFeasiblePrefixesKernel (k : ℕ) : List (List ℕ) :=
  if _hk : k = 0 then [[]]
  else
    feasibleSupportPrefixes (globalPureSupportProductThreshold k)
      (k - 1) 1
      GeneratedTailGlobalPureSupportCoverage.kernelSupportPrimes

end Erdos848
