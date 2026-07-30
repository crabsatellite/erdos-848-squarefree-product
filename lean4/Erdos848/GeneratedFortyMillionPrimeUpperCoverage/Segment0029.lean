import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0116
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0117
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0118
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0119

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0029_increment :
    Nat.primeCounting (1046565 + 16384 - 1) <=
      Nat.primeCounting (1046565 - 1) + 1148 := by
  have h00 := blockTree0116_increment
  have h01 := blockTree0117_increment
  have h02 := blockTree0118_increment
  have h03 := blockTree0119_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
