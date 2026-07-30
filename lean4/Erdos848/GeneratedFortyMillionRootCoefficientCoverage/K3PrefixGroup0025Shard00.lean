import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0025Defs

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0025Shard00Rows : List (List Nat × Nat) :=
  (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0025.drop 0).take 32

theorem k3PrefixGroup0025Shard00_root_coefficient_passes :
    k3PrefixGroup0025Shard00Rows.all k3PrefixGroup0025RootCoefficientPasses = true := by
  rfl

#print axioms k3PrefixGroup0025Shard00_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
