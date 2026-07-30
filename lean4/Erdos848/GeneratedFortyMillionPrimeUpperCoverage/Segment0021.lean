import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0084
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0085
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0086
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0087

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0021_increment :
    Nat.primeCounting (915493 + 16384 - 1) <=
      Nat.primeCounting (915493 - 1) + 1199 := by
  have h00 := blockTree0084_increment
  have h01 := blockTree0085_increment
  have h02 := blockTree0086_increment
  have h03 := blockTree0087_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
