import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0384
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0385
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0386
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0387

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0096_increment :
    Nat.primeCounting (2144293 + 16384 - 1) <=
      Nat.primeCounting (2144293 - 1) + 1143 := by
  have h00 := blockTree0384_increment
  have h01 := blockTree0385_increment
  have h02 := blockTree0386_increment
  have h03 := blockTree0387_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
