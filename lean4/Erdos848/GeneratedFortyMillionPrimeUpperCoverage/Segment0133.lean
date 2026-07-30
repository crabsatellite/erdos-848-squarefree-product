import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0532
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0533
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0534
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0535

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0133_increment :
    Nat.primeCounting (2750501 + 16384 - 1) <=
      Nat.primeCounting (2750501 - 1) + 1109 := by
  have h00 := blockTree0532_increment
  have h01 := blockTree0533_increment
  have h02 := blockTree0534_increment
  have h03 := blockTree0535_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
