import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0088
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0089
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0090
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0091

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0022_increment :
    Nat.primeCounting (931877 + 16384 - 1) <=
      Nat.primeCounting (931877 - 1) + 1184 := by
  have h00 := blockTree0088_increment
  have h01 := blockTree0089_increment
  have h02 := blockTree0090_increment
  have h03 := blockTree0091_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
