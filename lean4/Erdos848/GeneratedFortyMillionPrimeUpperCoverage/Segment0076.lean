import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0304
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0305
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0306
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0307

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0076_increment :
    Nat.primeCounting (1816613 + 16384 - 1) <=
      Nat.primeCounting (1816613 - 1) + 1149 := by
  have h00 := blockTree0304_increment
  have h01 := blockTree0305_increment
  have h02 := blockTree0306_increment
  have h03 := blockTree0307_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
