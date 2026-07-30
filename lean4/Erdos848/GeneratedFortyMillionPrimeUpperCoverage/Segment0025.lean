import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0100
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0101
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0102
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0103

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0025_increment :
    Nat.primeCounting (981029 + 16384 - 1) <=
      Nat.primeCounting (981029 - 1) + 1179 := by
  have h00 := blockTree0100_increment
  have h01 := blockTree0101_increment
  have h02 := blockTree0102_increment
  have h03 := blockTree0103_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
