import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0576
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0577
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0578
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0579

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0144_increment :
    Nat.primeCounting (2930725 + 16384 - 1) <=
      Nat.primeCounting (2930725 - 1) + 1082 := by
  have h00 := blockTree0576_increment
  have h01 := blockTree0577_increment
  have h02 := blockTree0578_increment
  have h03 := blockTree0579_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
