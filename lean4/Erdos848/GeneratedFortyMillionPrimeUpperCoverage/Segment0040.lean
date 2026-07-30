import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0160
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0161
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0162
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0163

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0040_increment :
    Nat.primeCounting (1226789 + 16384 - 1) <=
      Nat.primeCounting (1226789 - 1) + 1135 := by
  have h00 := blockTree0160_increment
  have h01 := blockTree0161_increment
  have h02 := blockTree0162_increment
  have h03 := blockTree0163_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
