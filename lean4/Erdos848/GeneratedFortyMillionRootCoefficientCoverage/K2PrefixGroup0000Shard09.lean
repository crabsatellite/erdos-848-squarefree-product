import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0000Defs

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0000Shard09Rows : List (List Nat × Nat) :=
  (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0000.drop 288).take 32

theorem k2PrefixGroup0000Shard09_root_coefficient_passes :
    k2PrefixGroup0000Shard09Rows.all k2PrefixGroup0000RootCoefficientPasses = true := by
  rfl

#print axioms k2PrefixGroup0000Shard09_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
