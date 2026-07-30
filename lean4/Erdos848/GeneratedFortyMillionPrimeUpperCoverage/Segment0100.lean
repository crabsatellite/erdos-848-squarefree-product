import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0400
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0401
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0402
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0403

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0100_increment :
    Nat.primeCounting (2209829 + 16384 - 1) <=
      Nat.primeCounting (2209829 - 1) + 1095 := by
  have h00 := blockTree0400_increment
  have h01 := blockTree0401_increment
  have h02 := blockTree0402_increment
  have h03 := blockTree0403_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
