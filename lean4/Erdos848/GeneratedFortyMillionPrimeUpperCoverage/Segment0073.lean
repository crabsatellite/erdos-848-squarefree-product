import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0292
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0293
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0294
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0295

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0073_increment :
    Nat.primeCounting (1767461 + 16384 - 1) <=
      Nat.primeCounting (1767461 - 1) + 1158 := by
  have h00 := blockTree0292_increment
  have h01 := blockTree0293_increment
  have h02 := blockTree0294_increment
  have h03 := blockTree0295_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
