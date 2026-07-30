import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0408
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0409
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0410
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0411

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0102_increment :
    Nat.primeCounting (2242597 + 16384 - 1) <=
      Nat.primeCounting (2242597 - 1) + 1137 := by
  have h00 := blockTree0408_increment
  have h01 := blockTree0409_increment
  have h02 := blockTree0410_increment
  have h03 := blockTree0411_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
