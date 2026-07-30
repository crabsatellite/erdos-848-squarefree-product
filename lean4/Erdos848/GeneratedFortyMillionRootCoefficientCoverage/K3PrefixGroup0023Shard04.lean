import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0023Defs

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0023Shard04Rows : List (List Nat × Nat) :=
  (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0023.drop 128).take 32

theorem k3PrefixGroup0023Shard04_root_coefficient_passes :
    k3PrefixGroup0023Shard04Rows.all k3PrefixGroup0023RootCoefficientPasses = true := by
  rfl

#print axioms k3PrefixGroup0023Shard04_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
