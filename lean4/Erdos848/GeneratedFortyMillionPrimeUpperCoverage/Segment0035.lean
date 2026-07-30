import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0140
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0141
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0142
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0143

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0035_increment :
    Nat.primeCounting (1144869 + 16384 - 1) <=
      Nat.primeCounting (1144869 - 1) + 1182 := by
  have h00 := blockTree0140_increment
  have h01 := blockTree0141_increment
  have h02 := blockTree0142_increment
  have h03 := blockTree0143_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
