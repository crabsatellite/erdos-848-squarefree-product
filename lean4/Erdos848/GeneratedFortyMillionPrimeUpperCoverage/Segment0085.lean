import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0340
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0341
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0342
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0343

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0085_increment :
    Nat.primeCounting (1964069 + 16384 - 1) <=
      Nat.primeCounting (1964069 - 1) + 1098 := by
  have h00 := blockTree0340_increment
  have h01 := blockTree0341_increment
  have h02 := blockTree0342_increment
  have h03 := blockTree0343_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
