import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0480
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0481
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0482
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0483

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0120_increment :
    Nat.primeCounting (2537509 + 16384 - 1) <=
      Nat.primeCounting (2537509 - 1) + 1102 := by
  have h00 := blockTree0480_increment
  have h01 := blockTree0481_increment
  have h02 := blockTree0482_increment
  have h03 := blockTree0483_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
