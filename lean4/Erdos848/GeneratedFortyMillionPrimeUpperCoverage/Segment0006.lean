import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0024
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0025
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0026
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0027

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0006_increment :
    Nat.primeCounting (669733 + 16384 - 1) <=
      Nat.primeCounting (669733 - 1) + 1230 := by
  have h00 := blockTree0024_increment
  have h01 := blockTree0025_increment
  have h02 := blockTree0026_increment
  have h03 := blockTree0027_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
