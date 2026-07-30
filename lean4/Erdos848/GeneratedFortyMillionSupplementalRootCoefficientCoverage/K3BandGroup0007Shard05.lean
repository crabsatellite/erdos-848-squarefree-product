import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0007Data

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3BandGroup0007Shard05Rows : List (List Nat) :=
  (k3BandGroup0007Rows.drop 160).take 26

theorem k3BandGroup0007Shard05_passes :
    k3BandGroup0007Shard05Rows.all fortyMillionK3BandPairPasses = true := by
  rfl

#print axioms k3BandGroup0007Shard05_passes

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
