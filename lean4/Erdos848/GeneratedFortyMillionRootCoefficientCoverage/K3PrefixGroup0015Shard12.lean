import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0015Defs

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0015Shard12Rows : List (List Nat × Nat) :=
  (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0015.drop 384).take 32

theorem k3PrefixGroup0015Shard12_root_coefficient_passes :
    k3PrefixGroup0015Shard12Rows.all k3PrefixGroup0015RootCoefficientPasses = true := by
  rfl

#print axioms k3PrefixGroup0015Shard12_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
