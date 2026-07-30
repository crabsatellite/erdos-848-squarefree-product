import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0672
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0673
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0674
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0675

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0168_increment :
    Nat.primeCounting (3323941 + 16384 - 1) <=
      Nat.primeCounting (3323941 - 1) + 1088 := by
  have h00 := blockTree0672_increment
  have h01 := blockTree0673_increment
  have h02 := blockTree0674_increment
  have h03 := blockTree0675_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
