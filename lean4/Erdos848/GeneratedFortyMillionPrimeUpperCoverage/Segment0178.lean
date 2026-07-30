import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0712
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0713
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0714
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0715

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0178_increment :
    Nat.primeCounting (3487781 + 16384 - 1) <=
      Nat.primeCounting (3487781 - 1) + 1083 := by
  have h00 := blockTree0712_increment
  have h01 := blockTree0713_increment
  have h02 := blockTree0714_increment
  have h03 := blockTree0715_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
