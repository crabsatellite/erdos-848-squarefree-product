import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0015Canonical
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0015Shard00
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0015Shard01

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k3BandGroup0015Rows_pass :
    k3BandGroup0015Rows.all fortyMillionK3BandPairPasses = true := by
  have hpartition : k3BandGroup0015Rows =
      k3BandGroup0015Shard00Rows ++
      k3BandGroup0015Shard01Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k3BandGroup0015Shard00_passes]
  rw [k3BandGroup0015Shard01_passes]
  rfl

theorem k3BandGroup0015CanonicalRows_pass :
    (fortyMillionK3BandPairRowsFor
      k3BandGroup0015QPrimes).all fortyMillionK3BandPairPasses = true := by
  rw [← k3BandGroup0015Rows_eq_canonical]
  exact k3BandGroup0015Rows_pass

#print axioms k3BandGroup0015CanonicalRows_pass

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
