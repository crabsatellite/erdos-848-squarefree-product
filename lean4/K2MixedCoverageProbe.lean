import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K2PrefixGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K2PrefixGroup0001
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K2PrefixGroup0002
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k2MixedCertifiedPrefixes : List (List ℕ) :=
  k2PrefixGroup0000.map Prod.fst ++
  k2PrefixGroup0001.map Prod.fst ++
  k2PrefixGroup0002.map Prod.fst

theorem k2MixedCertifiedPrefixes_eq :
    k2MixedCertifiedPrefixes =
      Erdos848.globalMixedFeasiblePrefixesKernel 2 := by
  rfl

#print axioms k2MixedCertifiedPrefixes_eq

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
