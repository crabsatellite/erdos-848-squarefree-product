import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0008Data

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3BandGroup0008Shard04Rows : List (List Nat) :=
  (k3BandGroup0008Rows.drop 128).take 5

theorem k3BandGroup0008Shard04_passes :
    k3BandGroup0008Shard04Rows.all fortyMillionK3BandPairPasses = true := by
  rfl

#print axioms k3BandGroup0008Shard04_passes

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
