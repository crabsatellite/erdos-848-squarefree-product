import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0588
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0589
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0590
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0591

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0147_increment :
    Nat.primeCounting (2979877 + 16384 - 1) <=
      Nat.primeCounting (2979877 - 1) + 1106 := by
  have h00 := blockTree0588_increment
  have h01 := blockTree0589_increment
  have h02 := blockTree0590_increment
  have h03 := blockTree0591_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
