import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0004
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0005
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0006
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0007

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0001_increment :
    Nat.primeCounting (587813 + 16384 - 1) <=
      Nat.primeCounting (587813 - 1) + 1223 := by
  have h00 := blockTree0004_increment
  have h01 := blockTree0005_increment
  have h02 := blockTree0006_increment
  have h03 := blockTree0007_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
