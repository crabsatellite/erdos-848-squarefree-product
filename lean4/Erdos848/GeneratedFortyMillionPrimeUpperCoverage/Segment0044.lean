import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0176
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0177
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0178
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0179

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0044_increment :
    Nat.primeCounting (1292325 + 16384 - 1) <=
      Nat.primeCounting (1292325 - 1) + 1152 := by
  have h00 := blockTree0176_increment
  have h01 := blockTree0177_increment
  have h02 := blockTree0178_increment
  have h03 := blockTree0179_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
