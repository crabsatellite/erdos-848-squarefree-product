import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0056
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0057
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0058
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0059

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0014_increment :
    Nat.primeCounting (800805 + 16384 - 1) <=
      Nat.primeCounting (800805 - 1) + 1191 := by
  have h00 := blockTree0056_increment
  have h01 := blockTree0057_increment
  have h02 := blockTree0058_increment
  have h03 := blockTree0059_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
