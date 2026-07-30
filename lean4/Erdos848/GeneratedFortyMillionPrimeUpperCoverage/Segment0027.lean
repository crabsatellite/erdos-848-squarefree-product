import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0108
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0109
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0110
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0111

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0027_increment :
    Nat.primeCounting (1013797 + 16384 - 1) <=
      Nat.primeCounting (1013797 - 1) + 1195 := by
  have h00 := blockTree0108_increment
  have h01 := blockTree0109_increment
  have h02 := blockTree0110_increment
  have h03 := blockTree0111_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
