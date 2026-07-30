import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0748

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0187_increment :
    Nat.primeCounting (3635237 + 1127 - 1) <=
      Nat.primeCounting (3635237 - 1) + 67 := by
  have h00 := blockTree0748_increment
  norm_num only at h00 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
