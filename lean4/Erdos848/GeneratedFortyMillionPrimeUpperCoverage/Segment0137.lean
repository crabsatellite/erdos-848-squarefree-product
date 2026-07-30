import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0548
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0549
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0550
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0551

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0137_increment :
    Nat.primeCounting (2816037 + 16384 - 1) <=
      Nat.primeCounting (2816037 - 1) + 1106 := by
  have h00 := blockTree0548_increment
  have h01 := blockTree0549_increment
  have h02 := blockTree0550_increment
  have h03 := blockTree0551_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
