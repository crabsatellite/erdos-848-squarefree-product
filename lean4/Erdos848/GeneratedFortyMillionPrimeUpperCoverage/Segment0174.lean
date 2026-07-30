import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0696
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0697
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0698
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0699

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0174_increment :
    Nat.primeCounting (3422245 + 16384 - 1) <=
      Nat.primeCounting (3422245 - 1) + 1106 := by
  have h00 := blockTree0696_increment
  have h01 := blockTree0697_increment
  have h02 := blockTree0698_increment
  have h03 := blockTree0699_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
