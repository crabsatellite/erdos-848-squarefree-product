import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.K3BandGroup0005Canonical

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k3BandGroup0005Rows_pass :
    k3BandGroup0005Rows.all fortyMillionK3BandPairPasses = true := by
  rfl

theorem k3BandGroup0005CanonicalRows_pass :
    (fortyMillionK3BandPairRowsFor
      k3BandGroup0005QPrimes).all fortyMillionK3BandPairPasses = true := by
  rw [← k3BandGroup0005Rows_eq_canonical]
  exact k3BandGroup0005Rows_pass

#print axioms k3BandGroup0005CanonicalRows_pass

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
