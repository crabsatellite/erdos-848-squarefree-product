import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0440
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0441
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0442
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0443

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0110_increment :
    Nat.primeCounting (2373669 + 16384 - 1) <=
      Nat.primeCounting (2373669 - 1) + 1123 := by
  have h00 := blockTree0440_increment
  have h01 := blockTree0441_increment
  have h02 := blockTree0442_increment
  have h03 := blockTree0443_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
