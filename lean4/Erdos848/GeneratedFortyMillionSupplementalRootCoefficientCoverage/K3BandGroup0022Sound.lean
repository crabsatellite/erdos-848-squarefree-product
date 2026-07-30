import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0022Canonical
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0022Shard00

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k3BandGroup0022Rows_pass :
    k3BandGroup0022Rows.all fortyMillionK3BandPairPasses = true := by
  have hpartition : k3BandGroup0022Rows =
      k3BandGroup0022Shard00Rows := by rfl
  rw [hpartition]
  exact k3BandGroup0022Shard00_passes

theorem k3BandGroup0022CanonicalRows_pass :
    (fortyMillionK3BandPairRowsFor
      k3BandGroup0022QPrimes).all fortyMillionK3BandPairPasses = true := by
  rw [← k3BandGroup0022Rows_eq_canonical]
  exact k3BandGroup0022Rows_pass

#print axioms k3BandGroup0022CanonicalRows_pass

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
