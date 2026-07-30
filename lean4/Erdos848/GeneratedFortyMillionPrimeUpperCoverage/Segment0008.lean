import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0032
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0033
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0034
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0035

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0008_increment :
    Nat.primeCounting (702501 + 16384 - 1) <=
      Nat.primeCounting (702501 - 1) + 1217 := by
  have h00 := blockTree0032_increment
  have h01 := blockTree0033_increment
  have h02 := blockTree0034_increment
  have h03 := blockTree0035_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
