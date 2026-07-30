import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0284
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0285
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0286
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0287

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0071_increment :
    Nat.primeCounting (1734693 + 16384 - 1) <=
      Nat.primeCounting (1734693 - 1) + 1160 := by
  have h00 := blockTree0284_increment
  have h01 := blockTree0285_increment
  have h02 := blockTree0286_increment
  have h03 := blockTree0287_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
