import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0640
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0641
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0642
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0643

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0160_increment :
    Nat.primeCounting (3192869 + 16384 - 1) <=
      Nat.primeCounting (3192869 - 1) + 1124 := by
  have h00 := blockTree0640_increment
  have h01 := blockTree0641_increment
  have h02 := blockTree0642_increment
  have h03 := blockTree0643_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
