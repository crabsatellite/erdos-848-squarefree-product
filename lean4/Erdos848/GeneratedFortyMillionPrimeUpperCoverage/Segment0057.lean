import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0228
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0229
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0230
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0231

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0057_increment :
    Nat.primeCounting (1505317 + 16384 - 1) <=
      Nat.primeCounting (1505317 - 1) + 1148 := by
  have h00 := blockTree0228_increment
  have h01 := blockTree0229_increment
  have h02 := blockTree0230_increment
  have h03 := blockTree0231_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
