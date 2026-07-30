import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0007Canonical
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0007Shard00
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0007Shard01
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0007Shard02
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0007Shard03
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0007Shard04
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0007Shard05

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k3BandGroup0007Rows_pass :
    k3BandGroup0007Rows.all fortyMillionK3BandPairPasses = true := by
  have hpartition : k3BandGroup0007Rows =
      k3BandGroup0007Shard00Rows ++
      k3BandGroup0007Shard01Rows ++
      k3BandGroup0007Shard02Rows ++
      k3BandGroup0007Shard03Rows ++
      k3BandGroup0007Shard04Rows ++
      k3BandGroup0007Shard05Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k3BandGroup0007Shard00_passes]
  rw [k3BandGroup0007Shard01_passes]
  rw [k3BandGroup0007Shard02_passes]
  rw [k3BandGroup0007Shard03_passes]
  rw [k3BandGroup0007Shard04_passes]
  rw [k3BandGroup0007Shard05_passes]
  rfl

theorem k3BandGroup0007CanonicalRows_pass :
    (fortyMillionK3BandPairRowsFor
      k3BandGroup0007QPrimes).all fortyMillionK3BandPairPasses = true := by
  rw [← k3BandGroup0007Rows_eq_canonical]
  exact k3BandGroup0007Rows_pass

#print axioms k3BandGroup0007CanonicalRows_pass

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
