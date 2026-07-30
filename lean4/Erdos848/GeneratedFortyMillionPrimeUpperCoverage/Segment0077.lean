import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0308
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0309
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0310
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0311

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0077_increment :
    Nat.primeCounting (1832997 + 16384 - 1) <=
      Nat.primeCounting (1832997 - 1) + 1121 := by
  have h00 := blockTree0308_increment
  have h01 := blockTree0309_increment
  have h02 := blockTree0310_increment
  have h03 := blockTree0311_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
