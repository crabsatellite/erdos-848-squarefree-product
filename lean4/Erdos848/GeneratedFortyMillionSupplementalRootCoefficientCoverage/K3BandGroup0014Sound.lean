import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0014Canonical
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0014Shard00
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0014Shard01

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k3BandGroup0014Rows_pass :
    k3BandGroup0014Rows.all fortyMillionK3BandPairPasses = true := by
  have hpartition : k3BandGroup0014Rows =
      k3BandGroup0014Shard00Rows ++
      k3BandGroup0014Shard01Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k3BandGroup0014Shard00_passes]
  rw [k3BandGroup0014Shard01_passes]
  rfl

theorem k3BandGroup0014CanonicalRows_pass :
    (fortyMillionK3BandPairRowsFor
      k3BandGroup0014QPrimes).all fortyMillionK3BandPairPasses = true := by
  rw [← k3BandGroup0014Rows_eq_canonical]
  exact k3BandGroup0014Rows_pass

#print axioms k3BandGroup0014CanonicalRows_pass

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
