import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0320
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0321
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0322
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0323

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0080_increment :
    Nat.primeCounting (1882149 + 16384 - 1) <=
      Nat.primeCounting (1882149 - 1) + 1133 := by
  have h00 := blockTree0320_increment
  have h01 := blockTree0321_increment
  have h02 := blockTree0322_increment
  have h03 := blockTree0323_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
