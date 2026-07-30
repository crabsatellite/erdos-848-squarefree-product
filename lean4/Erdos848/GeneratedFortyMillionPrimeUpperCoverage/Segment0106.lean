import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0424
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0425
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0426
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0427

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0106_increment :
    Nat.primeCounting (2308133 + 16384 - 1) <=
      Nat.primeCounting (2308133 - 1) + 1098 := by
  have h00 := blockTree0424_increment
  have h01 := blockTree0425_increment
  have h02 := blockTree0426_increment
  have h03 := blockTree0427_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
