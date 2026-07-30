import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0040
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0041
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0042
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0043

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0010_increment :
    Nat.primeCounting (735269 + 16384 - 1) <=
      Nat.primeCounting (735269 - 1) + 1184 := by
  have h00 := blockTree0040_increment
  have h01 := blockTree0041_increment
  have h02 := blockTree0042_increment
  have h03 := blockTree0043_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
