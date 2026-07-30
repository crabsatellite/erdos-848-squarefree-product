import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0376
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0377
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0378
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0379

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0094_increment :
    Nat.primeCounting (2111525 + 16384 - 1) <=
      Nat.primeCounting (2111525 - 1) + 1116 := by
  have h00 := blockTree0376_increment
  have h01 := blockTree0377_increment
  have h02 := blockTree0378_increment
  have h03 := blockTree0379_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
