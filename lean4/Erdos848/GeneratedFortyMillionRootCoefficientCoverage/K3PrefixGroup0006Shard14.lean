import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0006Defs

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0006Shard14Rows : List (List Nat × Nat) :=
  (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0006.drop 448).take 32

theorem k3PrefixGroup0006Shard14_root_coefficient_passes :
    k3PrefixGroup0006Shard14Rows.all k3PrefixGroup0006RootCoefficientPasses = true := by
  rfl

#print axioms k3PrefixGroup0006Shard14_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
