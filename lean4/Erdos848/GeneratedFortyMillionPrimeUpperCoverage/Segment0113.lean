import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0452
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0453
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0454
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0455

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0113_increment :
    Nat.primeCounting (2422821 + 16384 - 1) <=
      Nat.primeCounting (2422821 - 1) + 1080 := by
  have h00 := blockTree0452_increment
  have h01 := blockTree0453_increment
  have h02 := blockTree0454_increment
  have h03 := blockTree0455_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
