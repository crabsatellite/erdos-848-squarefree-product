import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0660
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0661
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0662
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0663

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0165_increment :
    Nat.primeCounting (3274789 + 16384 - 1) <=
      Nat.primeCounting (3274789 - 1) + 1105 := by
  have h00 := blockTree0660_increment
  have h01 := blockTree0661_increment
  have h02 := blockTree0662_increment
  have h03 := blockTree0663_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
