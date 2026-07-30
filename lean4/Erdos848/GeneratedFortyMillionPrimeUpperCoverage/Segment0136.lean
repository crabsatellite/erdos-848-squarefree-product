import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0544
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0545
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0546
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0547

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0136_increment :
    Nat.primeCounting (2799653 + 16384 - 1) <=
      Nat.primeCounting (2799653 - 1) + 1141 := by
  have h00 := blockTree0544_increment
  have h01 := blockTree0545_increment
  have h02 := blockTree0546_increment
  have h03 := blockTree0547_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
