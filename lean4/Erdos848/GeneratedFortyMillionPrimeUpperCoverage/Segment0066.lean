import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0264
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0265
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0266
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0267

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0066_increment :
    Nat.primeCounting (1652773 + 16384 - 1) <=
      Nat.primeCounting (1652773 - 1) + 1161 := by
  have h00 := blockTree0264_increment
  have h01 := blockTree0265_increment
  have h02 := blockTree0266_increment
  have h03 := blockTree0267_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
