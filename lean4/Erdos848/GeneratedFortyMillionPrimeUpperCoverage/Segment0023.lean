import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0092
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0093
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0094
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0095

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0023_increment :
    Nat.primeCounting (948261 + 16384 - 1) <=
      Nat.primeCounting (948261 - 1) + 1182 := by
  have h00 := blockTree0092_increment
  have h01 := blockTree0093_increment
  have h02 := blockTree0094_increment
  have h03 := blockTree0095_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
