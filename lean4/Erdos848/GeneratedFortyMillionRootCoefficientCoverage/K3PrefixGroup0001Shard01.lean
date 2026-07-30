import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0001Defs

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0001Shard01Rows : List (List Nat × Nat) :=
  (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0001.drop 32).take 32

theorem k3PrefixGroup0001Shard01_root_coefficient_passes :
    k3PrefixGroup0001Shard01Rows.all k3PrefixGroup0001RootCoefficientPasses = true := by
  rfl

#print axioms k3PrefixGroup0001Shard01_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
