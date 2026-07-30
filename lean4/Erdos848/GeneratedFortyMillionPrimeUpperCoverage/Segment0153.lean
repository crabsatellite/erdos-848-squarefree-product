import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0612
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0613
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0614
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0615

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0153_increment :
    Nat.primeCounting (3078181 + 16384 - 1) <=
      Nat.primeCounting (3078181 - 1) + 1115 := by
  have h00 := blockTree0612_increment
  have h01 := blockTree0613_increment
  have h02 := blockTree0614_increment
  have h03 := blockTree0615_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
