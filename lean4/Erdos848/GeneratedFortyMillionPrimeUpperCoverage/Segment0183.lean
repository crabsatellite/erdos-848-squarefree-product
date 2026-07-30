import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0732
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0733
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0734
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0735

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0183_increment :
    Nat.primeCounting (3569701 + 16384 - 1) <=
      Nat.primeCounting (3569701 - 1) + 1068 := by
  have h00 := blockTree0732_increment
  have h01 := blockTree0733_increment
  have h02 := blockTree0734_increment
  have h03 := blockTree0735_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
