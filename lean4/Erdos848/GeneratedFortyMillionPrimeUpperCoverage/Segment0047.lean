import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0188
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0189
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0190
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0191

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0047_increment :
    Nat.primeCounting (1341477 + 16384 - 1) <=
      Nat.primeCounting (1341477 - 1) + 1146 := by
  have h00 := blockTree0188_increment
  have h01 := blockTree0189_increment
  have h02 := blockTree0190_increment
  have h03 := blockTree0191_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
