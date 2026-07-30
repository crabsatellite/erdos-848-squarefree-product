import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0388
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0389
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0390
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0391

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0097_increment :
    Nat.primeCounting (2160677 + 16384 - 1) <=
      Nat.primeCounting (2160677 - 1) + 1115 := by
  have h00 := blockTree0388_increment
  have h01 := blockTree0389_increment
  have h02 := blockTree0390_increment
  have h03 := blockTree0391_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
