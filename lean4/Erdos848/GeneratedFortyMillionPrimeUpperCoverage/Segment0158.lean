import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0632
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0633
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0634
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0635

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0158_increment :
    Nat.primeCounting (3160101 + 16384 - 1) <=
      Nat.primeCounting (3160101 - 1) + 1101 := by
  have h00 := blockTree0632_increment
  have h01 := blockTree0633_increment
  have h02 := blockTree0634_increment
  have h03 := blockTree0635_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
