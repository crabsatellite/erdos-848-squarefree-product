import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0504
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0505
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0506
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0507

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0126_increment :
    Nat.primeCounting (2635813 + 16384 - 1) <=
      Nat.primeCounting (2635813 - 1) + 1125 := by
  have h00 := blockTree0504_increment
  have h01 := blockTree0505_increment
  have h02 := blockTree0506_increment
  have h03 := blockTree0507_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
