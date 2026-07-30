import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0488
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0489
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0490
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0491

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0122_increment :
    Nat.primeCounting (2570277 + 16384 - 1) <=
      Nat.primeCounting (2570277 - 1) + 1145 := by
  have h00 := blockTree0488_increment
  have h01 := blockTree0489_increment
  have h02 := blockTree0490_increment
  have h03 := blockTree0491_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
