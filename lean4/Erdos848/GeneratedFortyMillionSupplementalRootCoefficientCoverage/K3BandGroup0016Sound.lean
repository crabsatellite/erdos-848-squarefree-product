import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0016Canonical
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0016Shard00
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0016Shard01

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k3BandGroup0016Rows_pass :
    k3BandGroup0016Rows.all fortyMillionK3BandPairPasses = true := by
  have hpartition : k3BandGroup0016Rows =
      k3BandGroup0016Shard00Rows ++
      k3BandGroup0016Shard01Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k3BandGroup0016Shard00_passes]
  rw [k3BandGroup0016Shard01_passes]
  rfl

theorem k3BandGroup0016CanonicalRows_pass :
    (fortyMillionK3BandPairRowsFor
      k3BandGroup0016QPrimes).all fortyMillionK3BandPairPasses = true := by
  rw [← k3BandGroup0016Rows_eq_canonical]
  exact k3BandGroup0016Rows_pass

#print axioms k3BandGroup0016CanonicalRows_pass

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
