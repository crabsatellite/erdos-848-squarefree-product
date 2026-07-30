import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0372
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0373
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0374
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0375

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0093_increment :
    Nat.primeCounting (2095141 + 16384 - 1) <=
      Nat.primeCounting (2095141 - 1) + 1137 := by
  have h00 := blockTree0372_increment
  have h01 := blockTree0373_increment
  have h02 := blockTree0374_increment
  have h03 := blockTree0375_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
