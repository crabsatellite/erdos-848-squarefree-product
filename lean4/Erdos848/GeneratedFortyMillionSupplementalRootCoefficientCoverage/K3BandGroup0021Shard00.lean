import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0021Data

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3BandGroup0021Shard00Rows : List (List Nat) :=
  (k3BandGroup0021Rows.drop 0).take 16

theorem k3BandGroup0021Shard00_passes :
    k3BandGroup0021Shard00Rows.all fortyMillionK3BandPairPasses = true := by
  rfl

#print axioms k3BandGroup0021Shard00_passes

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
