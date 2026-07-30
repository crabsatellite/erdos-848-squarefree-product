import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0528
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0529
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0530
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0531

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0132_increment :
    Nat.primeCounting (2734117 + 16384 - 1) <=
      Nat.primeCounting (2734117 - 1) + 1090 := by
  have h00 := blockTree0528_increment
  have h01 := blockTree0529_increment
  have h02 := blockTree0530_increment
  have h03 := blockTree0531_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
