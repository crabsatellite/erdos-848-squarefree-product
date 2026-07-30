import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0380
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0381
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0382
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0383

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0095_increment :
    Nat.primeCounting (2127909 + 16384 - 1) <=
      Nat.primeCounting (2127909 - 1) + 1135 := by
  have h00 := blockTree0380_increment
  have h01 := blockTree0381_increment
  have h02 := blockTree0382_increment
  have h03 := blockTree0383_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
