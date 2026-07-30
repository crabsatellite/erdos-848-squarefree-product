import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0006Data

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3BandGroup0006Shard03Rows : List (List Nat) :=
  (k3BandGroup0006Rows.drop 96).take 32

theorem k3BandGroup0006Shard03_passes :
    k3BandGroup0006Shard03Rows.all fortyMillionK3BandPairPasses = true := by
  rfl

#print axioms k3BandGroup0006Shard03_passes

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
