import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0180
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0181
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0182
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0183

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0045_increment :
    Nat.primeCounting (1308709 + 16384 - 1) <=
      Nat.primeCounting (1308709 - 1) + 1172 := by
  have h00 := blockTree0180_increment
  have h01 := blockTree0181_increment
  have h02 := blockTree0182_increment
  have h03 := blockTree0183_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
