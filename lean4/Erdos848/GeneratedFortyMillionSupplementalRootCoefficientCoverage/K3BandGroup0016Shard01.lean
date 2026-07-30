import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0016Data

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3BandGroup0016Shard01Rows : List (List Nat) :=
  (k3BandGroup0016Rows.drop 32).take 9

theorem k3BandGroup0016Shard01_passes :
    k3BandGroup0016Shard01Rows.all fortyMillionK3BandPairPasses = true := by
  rfl

#print axioms k3BandGroup0016Shard01_passes

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
