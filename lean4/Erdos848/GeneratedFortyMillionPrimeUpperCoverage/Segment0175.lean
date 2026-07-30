import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0700
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0701
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0702
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0703

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0175_increment :
    Nat.primeCounting (3438629 + 16384 - 1) <=
      Nat.primeCounting (3438629 - 1) + 1093 := by
  have h00 := blockTree0700_increment
  have h01 := blockTree0701_increment
  have h02 := blockTree0702_increment
  have h03 := blockTree0703_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
