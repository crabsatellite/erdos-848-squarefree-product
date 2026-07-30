import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0596
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0597
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0598
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0599

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0149_increment :
    Nat.primeCounting (3012645 + 16384 - 1) <=
      Nat.primeCounting (3012645 - 1) + 1077 := by
  have h00 := blockTree0596_increment
  have h01 := blockTree0597_increment
  have h02 := blockTree0598_increment
  have h03 := blockTree0599_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
