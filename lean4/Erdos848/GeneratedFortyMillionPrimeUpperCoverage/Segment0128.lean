import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0512
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0513
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0514
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0515

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0128_increment :
    Nat.primeCounting (2668581 + 16384 - 1) <=
      Nat.primeCounting (2668581 - 1) + 1087 := by
  have h00 := blockTree0512_increment
  have h01 := blockTree0513_increment
  have h02 := blockTree0514_increment
  have h03 := blockTree0515_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
