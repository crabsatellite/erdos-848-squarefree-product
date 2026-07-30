import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0584
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0585
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0586
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0587

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0146_increment :
    Nat.primeCounting (2963493 + 16384 - 1) <=
      Nat.primeCounting (2963493 - 1) + 1095 := by
  have h00 := blockTree0584_increment
  have h01 := blockTree0585_increment
  have h02 := blockTree0586_increment
  have h03 := blockTree0587_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
