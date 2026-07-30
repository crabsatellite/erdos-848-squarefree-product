import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0288
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0289
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0290
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0291

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0072_increment :
    Nat.primeCounting (1751077 + 16384 - 1) <=
      Nat.primeCounting (1751077 - 1) + 1104 := by
  have h00 := blockTree0288_increment
  have h01 := blockTree0289_increment
  have h02 := blockTree0290_increment
  have h03 := blockTree0291_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
