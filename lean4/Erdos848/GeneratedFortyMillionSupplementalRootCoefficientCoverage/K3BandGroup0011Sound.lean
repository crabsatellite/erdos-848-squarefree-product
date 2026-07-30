import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0011Canonical
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0011Shard00
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0011Shard01
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0011Shard02

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k3BandGroup0011Rows_pass :
    k3BandGroup0011Rows.all fortyMillionK3BandPairPasses = true := by
  have hpartition : k3BandGroup0011Rows =
      k3BandGroup0011Shard00Rows ++
      k3BandGroup0011Shard01Rows ++
      k3BandGroup0011Shard02Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k3BandGroup0011Shard00_passes]
  rw [k3BandGroup0011Shard01_passes]
  rw [k3BandGroup0011Shard02_passes]
  rfl

theorem k3BandGroup0011CanonicalRows_pass :
    (fortyMillionK3BandPairRowsFor
      k3BandGroup0011QPrimes).all fortyMillionK3BandPairPasses = true := by
  rw [← k3BandGroup0011Rows_eq_canonical]
  exact k3BandGroup0011Rows_pass

#print axioms k3BandGroup0011CanonicalRows_pass

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
