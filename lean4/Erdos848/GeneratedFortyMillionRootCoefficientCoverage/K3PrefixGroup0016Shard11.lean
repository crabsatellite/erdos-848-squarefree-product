import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0016Defs

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0016Shard11Rows : List (List Nat × Nat) :=
  (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0016.drop 352).take 32

theorem k3PrefixGroup0016Shard11_root_coefficient_passes :
    k3PrefixGroup0016Shard11Rows.all k3PrefixGroup0016RootCoefficientPasses = true := by
  rfl

#print axioms k3PrefixGroup0016Shard11_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
