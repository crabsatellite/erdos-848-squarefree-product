import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0680
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0681
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0682
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0683

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0170_increment :
    Nat.primeCounting (3356709 + 16384 - 1) <=
      Nat.primeCounting (3356709 - 1) + 1088 := by
  have h00 := blockTree0680_increment
  have h01 := blockTree0681_increment
  have h02 := blockTree0682_increment
  have h03 := blockTree0683_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
