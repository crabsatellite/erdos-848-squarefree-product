import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0396
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0397
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0398
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0399

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0099_increment :
    Nat.primeCounting (2193445 + 16384 - 1) <=
      Nat.primeCounting (2193445 - 1) + 1110 := by
  have h00 := blockTree0396_increment
  have h01 := blockTree0397_increment
  have h02 := blockTree0398_increment
  have h03 := blockTree0399_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
