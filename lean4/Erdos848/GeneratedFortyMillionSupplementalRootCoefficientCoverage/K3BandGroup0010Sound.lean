import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0010Canonical
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0010Shard00
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0010Shard01
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0010Shard02
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0010Shard03

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k3BandGroup0010Rows_pass :
    k3BandGroup0010Rows.all fortyMillionK3BandPairPasses = true := by
  have hpartition : k3BandGroup0010Rows =
      k3BandGroup0010Shard00Rows ++
      k3BandGroup0010Shard01Rows ++
      k3BandGroup0010Shard02Rows ++
      k3BandGroup0010Shard03Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k3BandGroup0010Shard00_passes]
  rw [k3BandGroup0010Shard01_passes]
  rw [k3BandGroup0010Shard02_passes]
  rw [k3BandGroup0010Shard03_passes]
  rfl

theorem k3BandGroup0010CanonicalRows_pass :
    (fortyMillionK3BandPairRowsFor
      k3BandGroup0010QPrimes).all fortyMillionK3BandPairPasses = true := by
  rw [← k3BandGroup0010Rows_eq_canonical]
  exact k3BandGroup0010Rows_pass

#print axioms k3BandGroup0010CanonicalRows_pass

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
