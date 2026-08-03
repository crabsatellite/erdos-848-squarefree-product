import Erdos848.GeneratedTailTwentyMillionRootCoverage.K0Certificate
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K1Certificate
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K2Certificate
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K3Certificate
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K4Certificate
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K5Certificate
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K6Certificate
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K7Certificate

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootPrefix_certified_of_mem
    {k : ℕ} (hk : k ≤ 7) {support : List ℕ}
    (hsupport : support ∈
      Erdos848.twentyMillionRootFeasiblePrefixes k) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords k support = true := by
  interval_cases k
  · exact k0_certified_of_mem hsupport
  · exact k1_certified_of_mem hsupport
  · exact k2_certified_of_mem hsupport
  · exact k3_certified_of_mem hsupport
  · exact k4_certified_of_mem hsupport
  · exact k5_certified_of_mem hsupport
  · exact k6_certified_of_mem hsupport
  · exact k7_certified_of_mem hsupport

#print axioms rootPrefix_certified_of_mem

end Erdos848.GeneratedTailTwentyMillionRootCoverage
