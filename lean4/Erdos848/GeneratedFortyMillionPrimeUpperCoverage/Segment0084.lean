import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0336
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0337
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0338
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0339

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0084_increment :
    Nat.primeCounting (1947685 + 16384 - 1) <=
      Nat.primeCounting (1947685 - 1) + 1116 := by
  have h00 := blockTree0336_increment
  have h01 := blockTree0337_increment
  have h02 := blockTree0338_increment
  have h03 := blockTree0339_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
