import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0328
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0329
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0330
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0331

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0082_increment :
    Nat.primeCounting (1914917 + 16384 - 1) <=
      Nat.primeCounting (1914917 - 1) + 1146 := by
  have h00 := blockTree0328_increment
  have h01 := blockTree0329_increment
  have h02 := blockTree0330_increment
  have h03 := blockTree0331_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
