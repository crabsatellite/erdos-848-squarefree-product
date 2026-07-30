import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0124
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0125
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0126
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0127

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0031_increment :
    Nat.primeCounting (1079333 + 16384 - 1) <=
      Nat.primeCounting (1079333 - 1) + 1196 := by
  have h00 := blockTree0124_increment
  have h01 := blockTree0125_increment
  have h02 := blockTree0126_increment
  have h03 := blockTree0127_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
