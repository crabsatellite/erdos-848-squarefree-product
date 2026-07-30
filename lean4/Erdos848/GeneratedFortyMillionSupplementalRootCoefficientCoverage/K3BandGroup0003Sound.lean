import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0003Canonical

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k3BandGroup0003Rows_pass :
    k3BandGroup0003Rows.all fortyMillionK3BandPairPasses = true := by
  rfl

theorem k3BandGroup0003CanonicalRows_pass :
    (fortyMillionK3BandPairRowsFor
      k3BandGroup0003QPrimes).all fortyMillionK3BandPairPasses = true := by
  rw [← k3BandGroup0003Rows_eq_canonical]
  exact k3BandGroup0003Rows_pass

#print axioms k3BandGroup0003CanonicalRows_pass

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
