import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0296
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0297
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0298
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0299

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0074_increment :
    Nat.primeCounting (1783845 + 16384 - 1) <=
      Nat.primeCounting (1783845 - 1) + 1139 := by
  have h00 := blockTree0296_increment
  have h01 := blockTree0297_increment
  have h02 := blockTree0298_increment
  have h03 := blockTree0299_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
