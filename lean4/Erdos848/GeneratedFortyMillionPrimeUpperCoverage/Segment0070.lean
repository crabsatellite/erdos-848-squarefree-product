import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0280
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0281
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0282
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0283

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0070_increment :
    Nat.primeCounting (1718309 + 16384 - 1) <=
      Nat.primeCounting (1718309 - 1) + 1125 := by
  have h00 := blockTree0280_increment
  have h01 := blockTree0281_increment
  have h02 := blockTree0282_increment
  have h03 := blockTree0283_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
