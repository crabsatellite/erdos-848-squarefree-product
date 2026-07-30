import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0540
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0541
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0542
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0543

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0135_increment :
    Nat.primeCounting (2783269 + 16384 - 1) <=
      Nat.primeCounting (2783269 - 1) + 1101 := by
  have h00 := blockTree0540_increment
  have h01 := blockTree0541_increment
  have h02 := blockTree0542_increment
  have h03 := blockTree0543_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
