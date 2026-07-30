import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0344
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0345
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0346
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0347

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0086_increment :
    Nat.primeCounting (1980453 + 16384 - 1) <=
      Nat.primeCounting (1980453 - 1) + 1141 := by
  have h00 := blockTree0344_increment
  have h01 := blockTree0345_increment
  have h02 := blockTree0346_increment
  have h03 := blockTree0347_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
