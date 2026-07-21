import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K0Certificate
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K1Certificate
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K2Certificate
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K3Certificate
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K4Certificate
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5Certificate
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K6Certificate

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootPrefix_certified_of_mem
    {k : ℕ} (hk : k ≤ 6) {support : List ℕ}
    (hsupport : support ∈
      Erdos848.tenMillionKernelRootFeasiblePrefixes k) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords k support = true := by
  interval_cases k
  · exact k0_certified_of_mem hsupport
  · exact k1_certified_of_mem hsupport
  · exact k2_certified_of_mem hsupport
  · exact k3_certified_of_mem hsupport
  · exact k4_certified_of_mem hsupport
  · exact k5_certified_of_mem hsupport
  · exact k6_certified_of_mem hsupport

#print axioms rootPrefix_certified_of_mem

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
