import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0460
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0461
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0462
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0463

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0115_increment :
    Nat.primeCounting (2455589 + 16384 - 1) <=
      Nat.primeCounting (2455589 - 1) + 1110 := by
  have h00 := blockTree0460_increment
  have h01 := blockTree0461_increment
  have h02 := blockTree0462_increment
  have h03 := blockTree0463_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
