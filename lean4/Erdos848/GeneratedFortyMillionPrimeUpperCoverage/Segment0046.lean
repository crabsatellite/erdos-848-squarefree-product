import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0184
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0185
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0186
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0187

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0046_increment :
    Nat.primeCounting (1325093 + 16384 - 1) <=
      Nat.primeCounting (1325093 - 1) + 1150 := by
  have h00 := blockTree0184_increment
  have h01 := blockTree0185_increment
  have h02 := blockTree0186_increment
  have h03 := blockTree0187_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
