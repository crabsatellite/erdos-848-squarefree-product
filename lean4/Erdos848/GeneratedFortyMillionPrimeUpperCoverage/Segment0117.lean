import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0468
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0469
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0470
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0471

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0117_increment :
    Nat.primeCounting (2488357 + 16384 - 1) <=
      Nat.primeCounting (2488357 - 1) + 1106 := by
  have h00 := blockTree0468_increment
  have h01 := blockTree0469_increment
  have h02 := blockTree0470_increment
  have h03 := blockTree0471_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
