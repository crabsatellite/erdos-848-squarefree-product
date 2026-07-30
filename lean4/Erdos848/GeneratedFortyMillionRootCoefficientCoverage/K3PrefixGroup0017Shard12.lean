import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0017Defs

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0017Shard12Rows : List (List Nat × Nat) :=
  (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0017.drop 384).take 32

theorem k3PrefixGroup0017Shard12_root_coefficient_passes :
    k3PrefixGroup0017Shard12Rows.all k3PrefixGroup0017RootCoefficientPasses = true := by
  rfl

#print axioms k3PrefixGroup0017Shard12_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
