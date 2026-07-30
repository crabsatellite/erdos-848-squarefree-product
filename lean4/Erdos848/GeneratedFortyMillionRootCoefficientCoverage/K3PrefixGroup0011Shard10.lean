import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0011Defs

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0011Shard10Rows : List (List Nat × Nat) :=
  (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0011.drop 320).take 32

theorem k3PrefixGroup0011Shard10_root_coefficient_passes :
    k3PrefixGroup0011Shard10Rows.all k3PrefixGroup0011RootCoefficientPasses = true := by
  rfl

#print axioms k3PrefixGroup0011Shard10_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
