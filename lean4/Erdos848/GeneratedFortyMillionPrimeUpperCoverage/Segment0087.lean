import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0348
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0349
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0350
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0351

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0087_increment :
    Nat.primeCounting (1996837 + 16384 - 1) <=
      Nat.primeCounting (1996837 - 1) + 1141 := by
  have h00 := blockTree0348_increment
  have h01 := blockTree0349_increment
  have h02 := blockTree0350_increment
  have h03 := blockTree0351_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
