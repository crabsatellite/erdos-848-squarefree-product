import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0404
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0405
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0406
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0407

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0101_increment :
    Nat.primeCounting (2226213 + 16384 - 1) <=
      Nat.primeCounting (2226213 - 1) + 1127 := by
  have h00 := blockTree0404_increment
  have h01 := blockTree0405_increment
  have h02 := blockTree0406_increment
  have h03 := blockTree0407_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
