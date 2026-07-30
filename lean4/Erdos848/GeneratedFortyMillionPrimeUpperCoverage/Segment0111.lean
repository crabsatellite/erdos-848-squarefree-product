import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0444
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0445
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0446
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0447

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0111_increment :
    Nat.primeCounting (2390053 + 16384 - 1) <=
      Nat.primeCounting (2390053 - 1) + 1100 := by
  have h00 := blockTree0444_increment
  have h01 := blockTree0445_increment
  have h02 := blockTree0446_increment
  have h03 := blockTree0447_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
