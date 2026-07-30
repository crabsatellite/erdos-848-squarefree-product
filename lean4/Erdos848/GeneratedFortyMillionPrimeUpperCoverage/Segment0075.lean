import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0300
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0301
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0302
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0303

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0075_increment :
    Nat.primeCounting (1800229 + 16384 - 1) <=
      Nat.primeCounting (1800229 - 1) + 1143 := by
  have h00 := blockTree0300_increment
  have h01 := blockTree0301_increment
  have h02 := blockTree0302_increment
  have h03 := blockTree0303_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
