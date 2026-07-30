import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0312
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0313
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0314
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0315

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0078_increment :
    Nat.primeCounting (1849381 + 16384 - 1) <=
      Nat.primeCounting (1849381 - 1) + 1157 := by
  have h00 := blockTree0312_increment
  have h01 := blockTree0313_increment
  have h02 := blockTree0314_increment
  have h03 := blockTree0315_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
