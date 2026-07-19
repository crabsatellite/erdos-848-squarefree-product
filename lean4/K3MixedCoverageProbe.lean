import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0001
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0002
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0003
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0004
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0005
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0006
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0007
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0008
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0009
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0010
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0011
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0012
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0013
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0014
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0015
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0016
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0017
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0018
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0019
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0020
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0021
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0022
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0023
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0024
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0025
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0026
import Erdos848.TailGlobalMixedSupportChecker

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k3MixedCertifiedPrefixes : List (List ℕ) :=
  k3PrefixGroup0000.map Prod.fst ++
  k3PrefixGroup0001.map Prod.fst ++
  k3PrefixGroup0002.map Prod.fst ++
  k3PrefixGroup0003.map Prod.fst ++
  k3PrefixGroup0004.map Prod.fst ++
  k3PrefixGroup0005.map Prod.fst ++
  k3PrefixGroup0006.map Prod.fst ++
  k3PrefixGroup0007.map Prod.fst ++
  k3PrefixGroup0008.map Prod.fst ++
  k3PrefixGroup0009.map Prod.fst ++
  k3PrefixGroup0010.map Prod.fst ++
  k3PrefixGroup0011.map Prod.fst ++
  k3PrefixGroup0012.map Prod.fst ++
  k3PrefixGroup0013.map Prod.fst ++
  k3PrefixGroup0014.map Prod.fst ++
  k3PrefixGroup0015.map Prod.fst ++
  k3PrefixGroup0016.map Prod.fst ++
  k3PrefixGroup0017.map Prod.fst ++
  k3PrefixGroup0018.map Prod.fst ++
  k3PrefixGroup0019.map Prod.fst ++
  k3PrefixGroup0020.map Prod.fst ++
  k3PrefixGroup0021.map Prod.fst ++
  k3PrefixGroup0022.map Prod.fst ++
  k3PrefixGroup0023.map Prod.fst ++
  k3PrefixGroup0024.map Prod.fst ++
  k3PrefixGroup0025.map Prod.fst ++
  k3PrefixGroup0026.map Prod.fst

theorem k3MixedCertifiedPrefixes_eq :
    k3MixedCertifiedPrefixes =
      Erdos848.globalMixedFeasiblePrefixesKernel 3 := by
  rfl

#print axioms k3MixedCertifiedPrefixes_eq

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
