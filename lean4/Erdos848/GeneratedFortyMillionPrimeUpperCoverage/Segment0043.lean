import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0172
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0173
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0174
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0175

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0043_increment :
    Nat.primeCounting (1275941 + 16384 - 1) <=
      Nat.primeCounting (1275941 - 1) + 1165 := by
  have h00 := blockTree0172_increment
  have h01 := blockTree0173_increment
  have h02 := blockTree0174_increment
  have h03 := blockTree0175_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
