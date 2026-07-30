import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0005Defs

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0005Shard02Rows : List (List Nat × Nat) :=
  (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0005.drop 64).take 32

theorem k3PrefixGroup0005Shard02_root_coefficient_passes :
    k3PrefixGroup0005Shard02Rows.all k3PrefixGroup0005RootCoefficientPasses = true := by
  rfl

#print axioms k3PrefixGroup0005Shard02_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
