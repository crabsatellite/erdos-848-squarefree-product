import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0156
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0157
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0158
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0159

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0039_increment :
    Nat.primeCounting (1210405 + 16384 - 1) <=
      Nat.primeCounting (1210405 - 1) + 1184 := by
  have h00 := blockTree0156_increment
  have h01 := blockTree0157_increment
  have h02 := blockTree0158_increment
  have h03 := blockTree0159_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
