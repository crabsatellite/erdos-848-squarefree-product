import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0248
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0249
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0250
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0251

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0062_increment :
    Nat.primeCounting (1587237 + 16384 - 1) <=
      Nat.primeCounting (1587237 - 1) + 1156 := by
  have h00 := blockTree0248_increment
  have h01 := blockTree0249_increment
  have h02 := blockTree0250_increment
  have h03 := blockTree0251_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
