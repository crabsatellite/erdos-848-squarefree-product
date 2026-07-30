import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0072
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0073
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0074
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0075

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0018_increment :
    Nat.primeCounting (866341 + 16384 - 1) <=
      Nat.primeCounting (866341 - 1) + 1204 := by
  have h00 := blockTree0072_increment
  have h01 := blockTree0073_increment
  have h02 := blockTree0074_increment
  have h03 := blockTree0075_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
