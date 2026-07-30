import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0064
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0065
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0066
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0067

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0016_increment :
    Nat.primeCounting (833573 + 16384 - 1) <=
      Nat.primeCounting (833573 - 1) + 1177 := by
  have h00 := blockTree0064_increment
  have h01 := blockTree0065_increment
  have h02 := blockTree0066_increment
  have h03 := blockTree0067_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
