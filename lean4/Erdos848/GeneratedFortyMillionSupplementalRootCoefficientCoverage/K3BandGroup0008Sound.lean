import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0008Canonical
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0008Shard00
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0008Shard01
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0008Shard02
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0008Shard03
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0008Shard04

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k3BandGroup0008Rows_pass :
    k3BandGroup0008Rows.all fortyMillionK3BandPairPasses = true := by
  have hpartition : k3BandGroup0008Rows =
      k3BandGroup0008Shard00Rows ++
      k3BandGroup0008Shard01Rows ++
      k3BandGroup0008Shard02Rows ++
      k3BandGroup0008Shard03Rows ++
      k3BandGroup0008Shard04Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k3BandGroup0008Shard00_passes]
  rw [k3BandGroup0008Shard01_passes]
  rw [k3BandGroup0008Shard02_passes]
  rw [k3BandGroup0008Shard03_passes]
  rw [k3BandGroup0008Shard04_passes]
  rfl

theorem k3BandGroup0008CanonicalRows_pass :
    (fortyMillionK3BandPairRowsFor
      k3BandGroup0008QPrimes).all fortyMillionK3BandPairPasses = true := by
  rw [← k3BandGroup0008Rows_eq_canonical]
  exact k3BandGroup0008Rows_pass

#print axioms k3BandGroup0008CanonicalRows_pass

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
