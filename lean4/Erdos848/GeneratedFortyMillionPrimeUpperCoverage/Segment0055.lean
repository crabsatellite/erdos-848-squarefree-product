import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0220
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0221
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0222
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0223

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0055_increment :
    Nat.primeCounting (1472549 + 16384 - 1) <=
      Nat.primeCounting (1472549 - 1) + 1155 := by
  have h00 := blockTree0220_increment
  have h01 := blockTree0221_increment
  have h02 := blockTree0222_increment
  have h03 := blockTree0223_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
