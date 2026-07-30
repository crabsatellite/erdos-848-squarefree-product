import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0132
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0133
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0134
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0135

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0033_increment :
    Nat.primeCounting (1112101 + 16384 - 1) <=
      Nat.primeCounting (1112101 - 1) + 1156 := by
  have h00 := blockTree0132_increment
  have h01 := blockTree0133_increment
  have h02 := blockTree0134_increment
  have h03 := blockTree0135_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
