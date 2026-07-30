import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0080
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0081
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0082
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0083

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0020_increment :
    Nat.primeCounting (899109 + 16384 - 1) <=
      Nat.primeCounting (899109 - 1) + 1184 := by
  have h00 := blockTree0080_increment
  have h01 := blockTree0081_increment
  have h02 := blockTree0082_increment
  have h03 := blockTree0083_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
