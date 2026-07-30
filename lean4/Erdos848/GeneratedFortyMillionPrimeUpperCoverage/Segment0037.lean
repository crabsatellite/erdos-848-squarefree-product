import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0148
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0149
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0150
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0151

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0037_increment :
    Nat.primeCounting (1177637 + 16384 - 1) <=
      Nat.primeCounting (1177637 - 1) + 1208 := by
  have h00 := blockTree0148_increment
  have h01 := blockTree0149_increment
  have h02 := blockTree0150_increment
  have h03 := blockTree0151_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
