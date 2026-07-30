import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0276
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0277
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0278
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0279

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0069_increment :
    Nat.primeCounting (1701925 + 16384 - 1) <=
      Nat.primeCounting (1701925 - 1) + 1117 := by
  have h00 := blockTree0276_increment
  have h01 := blockTree0277_increment
  have h02 := blockTree0278_increment
  have h03 := blockTree0279_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
