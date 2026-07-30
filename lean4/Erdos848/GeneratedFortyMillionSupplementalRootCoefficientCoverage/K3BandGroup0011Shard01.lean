import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0011Data

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3BandGroup0011Shard01Rows : List (List Nat) :=
  (k3BandGroup0011Rows.drop 32).take 32

theorem k3BandGroup0011Shard01_passes :
    k3BandGroup0011Shard01Rows.all fortyMillionK3BandPairPasses = true := by
  rfl

#print axioms k3BandGroup0011Shard01_passes

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
