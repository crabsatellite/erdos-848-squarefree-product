import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0096
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0097
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0098
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0099

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0024_increment :
    Nat.primeCounting (964645 + 16384 - 1) <=
      Nat.primeCounting (964645 - 1) + 1171 := by
  have h00 := blockTree0096_increment
  have h01 := blockTree0097_increment
  have h02 := blockTree0098_increment
  have h03 := blockTree0099_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
