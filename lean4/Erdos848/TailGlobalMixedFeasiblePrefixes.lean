import Erdos848.TailSupportScanChecker
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.Data

namespace Erdos848

/-! Lightweight structural domain of the global mixed support certificate. -/

def globalMixedSupportProductThreshold (k : ℕ) : ℕ :=
  21_000_000 * 2 ^ k

def globalMixedKernelSupportPrimes : List ℕ :=
  GeneratedTailGlobalMixedSupportCoverage.mixedSupportPrimes ++ [9161]

def globalMixedFeasiblePrefixesKernel (k : ℕ) : List (List ℕ) :=
  if _hk : k = 0 then [[]]
  else
    feasibleSupportPrefixes (globalMixedSupportProductThreshold k)
      (k - 1) 1 globalMixedKernelSupportPrimes

end Erdos848
