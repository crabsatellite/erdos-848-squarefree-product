import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0256
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0257
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0258
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0259

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0064_increment :
    Nat.primeCounting (1620005 + 16384 - 1) <=
      Nat.primeCounting (1620005 - 1) + 1173 := by
  have h00 := blockTree0256_increment
  have h01 := blockTree0257_increment
  have h02 := blockTree0258_increment
  have h03 := blockTree0259_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
