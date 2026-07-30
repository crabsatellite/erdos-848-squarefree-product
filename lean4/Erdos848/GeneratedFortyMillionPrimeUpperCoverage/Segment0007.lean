import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0028
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0029
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0030
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0031

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0007_increment :
    Nat.primeCounting (686117 + 16384 - 1) <=
      Nat.primeCounting (686117 - 1) + 1212 := by
  have h00 := blockTree0028_increment
  have h01 := blockTree0029_increment
  have h02 := blockTree0030_increment
  have h03 := blockTree0031_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
