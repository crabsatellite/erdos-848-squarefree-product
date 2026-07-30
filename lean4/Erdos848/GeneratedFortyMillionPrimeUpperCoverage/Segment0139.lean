import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0556
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0557
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0558
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0559

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0139_increment :
    Nat.primeCounting (2848805 + 16384 - 1) <=
      Nat.primeCounting (2848805 - 1) + 1080 := by
  have h00 := blockTree0556_increment
  have h01 := blockTree0557_increment
  have h02 := blockTree0558_increment
  have h03 := blockTree0559_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
