import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0022Defs

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0022Shard08Rows : List (List Nat × Nat) :=
  (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0022.drop 256).take 32

theorem k3PrefixGroup0022Shard08_root_coefficient_passes :
    k3PrefixGroup0022Shard08Rows.all k3PrefixGroup0022RootCoefficientPasses = true := by
  rfl

#print axioms k3PrefixGroup0022Shard08_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
