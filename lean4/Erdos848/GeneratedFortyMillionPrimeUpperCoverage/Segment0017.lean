import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0068
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0069
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0070
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0071

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0017_increment :
    Nat.primeCounting (849957 + 16384 - 1) <=
      Nat.primeCounting (849957 - 1) + 1208 := by
  have h00 := blockTree0068_increment
  have h01 := blockTree0069_increment
  have h02 := blockTree0070_increment
  have h03 := blockTree0071_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
