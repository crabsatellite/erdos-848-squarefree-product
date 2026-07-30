import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0456
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0457
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0458
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0459

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0114_increment :
    Nat.primeCounting (2439205 + 16384 - 1) <=
      Nat.primeCounting (2439205 - 1) + 1132 := by
  have h00 := blockTree0456_increment
  have h01 := blockTree0457_increment
  have h02 := blockTree0458_increment
  have h03 := blockTree0459_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
