import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0496
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0497
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0498
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0499

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0124_increment :
    Nat.primeCounting (2603045 + 16384 - 1) <=
      Nat.primeCounting (2603045 - 1) + 1108 := by
  have h00 := blockTree0496_increment
  have h01 := blockTree0497_increment
  have h02 := blockTree0498_increment
  have h03 := blockTree0499_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
