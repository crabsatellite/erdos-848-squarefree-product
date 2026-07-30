import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0104
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0105
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0106
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0107

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0026_increment :
    Nat.primeCounting (997413 + 16384 - 1) <=
      Nat.primeCounting (997413 - 1) + 1206 := by
  have h00 := blockTree0104_increment
  have h01 := blockTree0105_increment
  have h02 := blockTree0106_increment
  have h03 := blockTree0107_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
