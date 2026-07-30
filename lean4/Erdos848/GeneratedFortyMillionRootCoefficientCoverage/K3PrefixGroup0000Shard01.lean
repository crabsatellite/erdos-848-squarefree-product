import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0000Defs

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0000Shard01Rows : List (List Nat × Nat) :=
  (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0000.drop 32).take 32

theorem k3PrefixGroup0000Shard01_root_coefficient_passes :
    k3PrefixGroup0000Shard01Rows.all k3PrefixGroup0000RootCoefficientPasses = true := by
  rfl

#print axioms k3PrefixGroup0000Shard01_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
