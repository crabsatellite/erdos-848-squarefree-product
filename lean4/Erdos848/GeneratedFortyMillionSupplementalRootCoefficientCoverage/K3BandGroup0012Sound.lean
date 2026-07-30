import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0012Canonical
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0012Shard00
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0012Shard01

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k3BandGroup0012Rows_pass :
    k3BandGroup0012Rows.all fortyMillionK3BandPairPasses = true := by
  have hpartition : k3BandGroup0012Rows =
      k3BandGroup0012Shard00Rows ++
      k3BandGroup0012Shard01Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k3BandGroup0012Shard00_passes]
  rw [k3BandGroup0012Shard01_passes]
  rfl

theorem k3BandGroup0012CanonicalRows_pass :
    (fortyMillionK3BandPairRowsFor
      k3BandGroup0012QPrimes).all fortyMillionK3BandPairPasses = true := by
  rw [← k3BandGroup0012Rows_eq_canonical]
  exact k3BandGroup0012Rows_pass

#print axioms k3BandGroup0012CanonicalRows_pass

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
