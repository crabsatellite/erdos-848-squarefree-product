import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0552
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0553
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0554
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0555

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0138_increment :
    Nat.primeCounting (2832421 + 16384 - 1) <=
      Nat.primeCounting (2832421 - 1) + 1130 := by
  have h00 := blockTree0552_increment
  have h01 := blockTree0553_increment
  have h02 := blockTree0554_increment
  have h03 := blockTree0555_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
