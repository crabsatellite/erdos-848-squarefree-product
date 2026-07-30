import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0006Canonical
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0006Shard00
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0006Shard01
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0006Shard02
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0006Shard03
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0006Shard04

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k3BandGroup0006Rows_pass :
    k3BandGroup0006Rows.all fortyMillionK3BandPairPasses = true := by
  have hpartition : k3BandGroup0006Rows =
      k3BandGroup0006Shard00Rows ++
      k3BandGroup0006Shard01Rows ++
      k3BandGroup0006Shard02Rows ++
      k3BandGroup0006Shard03Rows ++
      k3BandGroup0006Shard04Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k3BandGroup0006Shard00_passes]
  rw [k3BandGroup0006Shard01_passes]
  rw [k3BandGroup0006Shard02_passes]
  rw [k3BandGroup0006Shard03_passes]
  rw [k3BandGroup0006Shard04_passes]
  rfl

theorem k3BandGroup0006CanonicalRows_pass :
    (fortyMillionK3BandPairRowsFor
      k3BandGroup0006QPrimes).all fortyMillionK3BandPairPasses = true := by
  rw [← k3BandGroup0006Rows_eq_canonical]
  exact k3BandGroup0006Rows_pass

#print axioms k3BandGroup0006CanonicalRows_pass

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
