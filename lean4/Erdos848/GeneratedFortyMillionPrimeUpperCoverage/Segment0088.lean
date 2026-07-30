import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0352
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0353
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0354
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0355

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0088_increment :
    Nat.primeCounting (2013221 + 16384 - 1) <=
      Nat.primeCounting (2013221 - 1) + 1141 := by
  have h00 := blockTree0352_increment
  have h01 := blockTree0353_increment
  have h02 := blockTree0354_increment
  have h03 := blockTree0355_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
