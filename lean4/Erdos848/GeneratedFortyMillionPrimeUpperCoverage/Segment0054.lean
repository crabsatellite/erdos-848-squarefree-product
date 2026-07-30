import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0216
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0217
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0218
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0219

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0054_increment :
    Nat.primeCounting (1456165 + 16384 - 1) <=
      Nat.primeCounting (1456165 - 1) + 1138 := by
  have h00 := blockTree0216_increment
  have h01 := blockTree0217_increment
  have h02 := blockTree0218_increment
  have h03 := blockTree0219_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
