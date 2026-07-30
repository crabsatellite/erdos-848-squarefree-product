import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0009Defs

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0009Shard09Rows : List (List Nat × Nat) :=
  (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0009.drop 288).take 32

theorem k3PrefixGroup0009Shard09_root_coefficient_passes :
    k3PrefixGroup0009Shard09Rows.all k3PrefixGroup0009RootCoefficientPasses = true := by
  rfl

#print axioms k3PrefixGroup0009Shard09_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
