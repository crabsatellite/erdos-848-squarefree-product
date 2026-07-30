import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0432
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0433
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0434
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0435

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0108_increment :
    Nat.primeCounting (2340901 + 16384 - 1) <=
      Nat.primeCounting (2340901 - 1) + 1094 := by
  have h00 := blockTree0432_increment
  have h01 := blockTree0433_increment
  have h02 := blockTree0434_increment
  have h03 := blockTree0435_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
