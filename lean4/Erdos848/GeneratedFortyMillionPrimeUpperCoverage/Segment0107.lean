import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0428
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0429
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0430
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0431

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0107_increment :
    Nat.primeCounting (2324517 + 16384 - 1) <=
      Nat.primeCounting (2324517 - 1) + 1111 := by
  have h00 := blockTree0428_increment
  have h01 := blockTree0429_increment
  have h02 := blockTree0430_increment
  have h03 := blockTree0431_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
