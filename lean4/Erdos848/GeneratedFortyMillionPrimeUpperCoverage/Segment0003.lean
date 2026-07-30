import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0012
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0013
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0014
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0015

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0003_increment :
    Nat.primeCounting (620581 + 16384 - 1) <=
      Nat.primeCounting (620581 - 1) + 1208 := by
  have h00 := blockTree0012_increment
  have h01 := blockTree0013_increment
  have h02 := blockTree0014_increment
  have h03 := blockTree0015_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
