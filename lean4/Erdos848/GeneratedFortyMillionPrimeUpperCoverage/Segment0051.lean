import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0204
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0205
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0206
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0207

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0051_increment :
    Nat.primeCounting (1407013 + 16384 - 1) <=
      Nat.primeCounting (1407013 - 1) + 1133 := by
  have h00 := blockTree0204_increment
  have h01 := blockTree0205_increment
  have h02 := blockTree0206_increment
  have h03 := blockTree0207_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
