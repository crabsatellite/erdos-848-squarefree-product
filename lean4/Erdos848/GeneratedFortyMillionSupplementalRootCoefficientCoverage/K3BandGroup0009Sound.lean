import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0009Canonical
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0009Shard00
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0009Shard01
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0009Shard02
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0009Shard03

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k3BandGroup0009Rows_pass :
    k3BandGroup0009Rows.all fortyMillionK3BandPairPasses = true := by
  have hpartition : k3BandGroup0009Rows =
      k3BandGroup0009Shard00Rows ++
      k3BandGroup0009Shard01Rows ++
      k3BandGroup0009Shard02Rows ++
      k3BandGroup0009Shard03Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k3BandGroup0009Shard00_passes]
  rw [k3BandGroup0009Shard01_passes]
  rw [k3BandGroup0009Shard02_passes]
  rw [k3BandGroup0009Shard03_passes]
  rfl

theorem k3BandGroup0009CanonicalRows_pass :
    (fortyMillionK3BandPairRowsFor
      k3BandGroup0009QPrimes).all fortyMillionK3BandPairPasses = true := by
  rw [← k3BandGroup0009Rows_eq_canonical]
  exact k3BandGroup0009Rows_pass

#print axioms k3BandGroup0009CanonicalRows_pass

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
