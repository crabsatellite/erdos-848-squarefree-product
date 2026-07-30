import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0484
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0485
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0486
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0487

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0121_increment :
    Nat.primeCounting (2553893 + 16384 - 1) <=
      Nat.primeCounting (2553893 - 1) + 1105 := by
  have h00 := blockTree0484_increment
  have h01 := blockTree0485_increment
  have h02 := blockTree0486_increment
  have h03 := blockTree0487_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
