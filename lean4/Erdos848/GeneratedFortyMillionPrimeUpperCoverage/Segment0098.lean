import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0392
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0393
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0394
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0395

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0098_increment :
    Nat.primeCounting (2177061 + 16384 - 1) <=
      Nat.primeCounting (2177061 - 1) + 1116 := by
  have h00 := blockTree0392_increment
  have h01 := blockTree0393_increment
  have h02 := blockTree0394_increment
  have h03 := blockTree0395_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
