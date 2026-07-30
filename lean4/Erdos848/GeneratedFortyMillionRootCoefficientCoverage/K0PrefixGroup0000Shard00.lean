import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K0PrefixGroup0000Defs

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k0PrefixGroup0000Shard00Rows : List (List Nat × Nat) :=
  (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k0PrefixGroup0000.drop 0).take 1

theorem k0PrefixGroup0000Shard00_root_coefficient_passes :
    k0PrefixGroup0000Shard00Rows.all k0PrefixGroup0000RootCoefficientPasses = true := by
  rfl

#print axioms k0PrefixGroup0000Shard00_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
