import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0021Defs

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0021Shard04Rows : List (List Nat × Nat) :=
  (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0021.drop 128).take 32

theorem k3PrefixGroup0021Shard04_root_coefficient_passes :
    k3PrefixGroup0021Shard04Rows.all k3PrefixGroup0021RootCoefficientPasses = true := by
  rfl

#print axioms k3PrefixGroup0021Shard04_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
