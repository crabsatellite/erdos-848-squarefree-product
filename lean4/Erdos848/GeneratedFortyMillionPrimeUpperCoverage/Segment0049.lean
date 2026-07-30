import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0196
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0197
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0198
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0199

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0049_increment :
    Nat.primeCounting (1374245 + 16384 - 1) <=
      Nat.primeCounting (1374245 - 1) + 1170 := by
  have h00 := blockTree0196_increment
  have h01 := blockTree0197_increment
  have h02 := blockTree0198_increment
  have h03 := blockTree0199_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
