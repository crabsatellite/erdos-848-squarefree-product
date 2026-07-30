import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0616
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0617
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0618
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0619

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0154_increment :
    Nat.primeCounting (3094565 + 16384 - 1) <=
      Nat.primeCounting (3094565 - 1) + 1086 := by
  have h00 := blockTree0616_increment
  have h01 := blockTree0617_increment
  have h02 := blockTree0618_increment
  have h03 := blockTree0619_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
