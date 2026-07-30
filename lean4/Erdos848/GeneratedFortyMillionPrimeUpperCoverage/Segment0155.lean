import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0620
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0621
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0622
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0623

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0155_increment :
    Nat.primeCounting (3110949 + 16384 - 1) <=
      Nat.primeCounting (3110949 - 1) + 1094 := by
  have h00 := blockTree0620_increment
  have h01 := blockTree0621_increment
  have h02 := blockTree0622_increment
  have h03 := blockTree0623_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
