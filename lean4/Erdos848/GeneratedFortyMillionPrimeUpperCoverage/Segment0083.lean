import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0332
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0333
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0334
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0335

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0083_increment :
    Nat.primeCounting (1931301 + 16384 - 1) <=
      Nat.primeCounting (1931301 - 1) + 1144 := by
  have h00 := blockTree0332_increment
  have h01 := blockTree0333_increment
  have h02 := blockTree0334_increment
  have h03 := blockTree0335_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
