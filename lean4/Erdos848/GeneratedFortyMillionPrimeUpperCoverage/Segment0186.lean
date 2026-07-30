import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0744
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0745
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0746
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0747

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0186_increment :
    Nat.primeCounting (3618853 + 16384 - 1) <=
      Nat.primeCounting (3618853 - 1) + 1100 := by
  have h00 := blockTree0744_increment
  have h01 := blockTree0745_increment
  have h02 := blockTree0746_increment
  have h03 := blockTree0747_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
