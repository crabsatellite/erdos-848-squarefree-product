import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0316
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0317
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0318
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0319

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0079_increment :
    Nat.primeCounting (1865765 + 16384 - 1) <=
      Nat.primeCounting (1865765 - 1) + 1141 := by
  have h00 := blockTree0316_increment
  have h01 := blockTree0317_increment
  have h02 := blockTree0318_increment
  have h03 := blockTree0319_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
