import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0560
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0561
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0562
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0563

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0140_increment :
    Nat.primeCounting (2865189 + 16384 - 1) <=
      Nat.primeCounting (2865189 - 1) + 1091 := by
  have h00 := blockTree0560_increment
  have h01 := blockTree0561_increment
  have h02 := blockTree0562_increment
  have h03 := blockTree0563_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
