import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0240
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0241
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0242
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0243

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0060_increment :
    Nat.primeCounting (1554469 + 16384 - 1) <=
      Nat.primeCounting (1554469 - 1) + 1141 := by
  have h00 := blockTree0240_increment
  have h01 := blockTree0241_increment
  have h02 := blockTree0242_increment
  have h03 := blockTree0243_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
