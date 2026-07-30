import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0003Defs

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0003Shard07Rows : List (List Nat × Nat) :=
  (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0003.drop 224).take 32

theorem k3PrefixGroup0003Shard07_root_coefficient_passes :
    k3PrefixGroup0003Shard07Rows.all k3PrefixGroup0003RootCoefficientPasses = true := by
  rfl

#print axioms k3PrefixGroup0003Shard07_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
