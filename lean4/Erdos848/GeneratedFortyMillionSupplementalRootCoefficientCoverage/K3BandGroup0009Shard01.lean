import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0009Data

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3BandGroup0009Shard01Rows : List (List Nat) :=
  (k3BandGroup0009Rows.drop 32).take 32

theorem k3BandGroup0009Shard01_passes :
    k3BandGroup0009Shard01Rows.all fortyMillionK3BandPairPasses = true := by
  rfl

#print axioms k3BandGroup0009Shard01_passes

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
