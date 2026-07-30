import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0120
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0121
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0122
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0123

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0030_increment :
    Nat.primeCounting (1062949 + 16384 - 1) <=
      Nat.primeCounting (1062949 - 1) + 1188 := by
  have h00 := blockTree0120_increment
  have h01 := blockTree0121_increment
  have h02 := blockTree0122_increment
  have h03 := blockTree0123_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
