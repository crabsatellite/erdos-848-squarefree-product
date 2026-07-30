import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0048
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0049
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0050
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0051

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0012_increment :
    Nat.primeCounting (768037 + 16384 - 1) <=
      Nat.primeCounting (768037 - 1) + 1213 := by
  have h00 := blockTree0048_increment
  have h01 := blockTree0049_increment
  have h02 := blockTree0050_increment
  have h03 := blockTree0051_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
