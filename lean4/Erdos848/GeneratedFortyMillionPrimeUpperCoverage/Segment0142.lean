import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0568
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0569
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0570
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0571

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0142_increment :
    Nat.primeCounting (2897957 + 16384 - 1) <=
      Nat.primeCounting (2897957 - 1) + 1109 := by
  have h00 := blockTree0568_increment
  have h01 := blockTree0569_increment
  have h02 := blockTree0570_increment
  have h03 := blockTree0571_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
