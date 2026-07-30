import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0364
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0365
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0366
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0367

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0091_increment :
    Nat.primeCounting (2062373 + 16384 - 1) <=
      Nat.primeCounting (2062373 - 1) + 1118 := by
  have h00 := blockTree0364_increment
  have h01 := blockTree0365_increment
  have h02 := blockTree0366_increment
  have h03 := blockTree0367_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
