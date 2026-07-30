import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0060
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0061
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0062
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0063

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0015_increment :
    Nat.primeCounting (817189 + 16384 - 1) <=
      Nat.primeCounting (817189 - 1) + 1222 := by
  have h00 := blockTree0060_increment
  have h01 := blockTree0061_increment
  have h02 := blockTree0062_increment
  have h03 := blockTree0063_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
