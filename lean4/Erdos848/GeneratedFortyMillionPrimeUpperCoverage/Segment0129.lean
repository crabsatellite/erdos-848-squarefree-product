import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0516
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0517
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0518
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0519

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0129_increment :
    Nat.primeCounting (2684965 + 16384 - 1) <=
      Nat.primeCounting (2684965 - 1) + 1127 := by
  have h00 := blockTree0516_increment
  have h01 := blockTree0517_increment
  have h02 := blockTree0518_increment
  have h03 := blockTree0519_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
