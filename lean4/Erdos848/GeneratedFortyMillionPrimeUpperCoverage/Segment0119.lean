import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0476
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0477
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0478
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0479

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0119_increment :
    Nat.primeCounting (2521125 + 16384 - 1) <=
      Nat.primeCounting (2521125 - 1) + 1123 := by
  have h00 := blockTree0476_increment
  have h01 := blockTree0477_increment
  have h02 := blockTree0478_increment
  have h03 := blockTree0479_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
