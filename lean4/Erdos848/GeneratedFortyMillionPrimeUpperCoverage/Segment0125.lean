import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0500
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0501
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0502
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0503

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0125_increment :
    Nat.primeCounting (2619429 + 16384 - 1) <=
      Nat.primeCounting (2619429 - 1) + 1105 := by
  have h00 := blockTree0500_increment
  have h01 := blockTree0501_increment
  have h02 := blockTree0502_increment
  have h03 := blockTree0503_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
