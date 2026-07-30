import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0592
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0593
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0594
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0595

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0148_increment :
    Nat.primeCounting (2996261 + 16384 - 1) <=
      Nat.primeCounting (2996261 - 1) + 1124 := by
  have h00 := blockTree0592_increment
  have h01 := blockTree0593_increment
  have h02 := blockTree0594_increment
  have h03 := blockTree0595_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
