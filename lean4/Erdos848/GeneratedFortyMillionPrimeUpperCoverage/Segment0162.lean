import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0648
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0649
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0650
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0651

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0162_increment :
    Nat.primeCounting (3225637 + 16384 - 1) <=
      Nat.primeCounting (3225637 - 1) + 1108 := by
  have h00 := blockTree0648_increment
  have h01 := blockTree0649_increment
  have h02 := blockTree0650_increment
  have h03 := blockTree0651_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
