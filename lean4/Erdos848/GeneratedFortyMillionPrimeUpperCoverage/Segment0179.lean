import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0716
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0717
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0718
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0719

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0179_increment :
    Nat.primeCounting (3504165 + 16384 - 1) <=
      Nat.primeCounting (3504165 - 1) + 1073 := by
  have h00 := blockTree0716_increment
  have h01 := blockTree0717_increment
  have h02 := blockTree0718_increment
  have h03 := blockTree0719_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
