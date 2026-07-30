import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0572
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0573
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0574
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0575

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0143_increment :
    Nat.primeCounting (2914341 + 16384 - 1) <=
      Nat.primeCounting (2914341 - 1) + 1100 := by
  have h00 := blockTree0572_increment
  have h01 := blockTree0573_increment
  have h02 := blockTree0574_increment
  have h03 := blockTree0575_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
