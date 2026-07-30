import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0436
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0437
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0438
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0439

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0109_increment :
    Nat.primeCounting (2357285 + 16384 - 1) <=
      Nat.primeCounting (2357285 - 1) + 1136 := by
  have h00 := blockTree0436_increment
  have h01 := blockTree0437_increment
  have h02 := blockTree0438_increment
  have h03 := blockTree0439_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
