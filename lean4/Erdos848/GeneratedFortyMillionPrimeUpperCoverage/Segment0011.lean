import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0044
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0045
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0046
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0047

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0011_increment :
    Nat.primeCounting (751653 + 16384 - 1) <=
      Nat.primeCounting (751653 - 1) + 1222 := by
  have h00 := blockTree0044_increment
  have h01 := blockTree0045_increment
  have h02 := blockTree0046_increment
  have h03 := blockTree0047_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
