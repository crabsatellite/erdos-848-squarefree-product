import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0224
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0225
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0226
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0227

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0056_increment :
    Nat.primeCounting (1488933 + 16384 - 1) <=
      Nat.primeCounting (1488933 - 1) + 1182 := by
  have h00 := blockTree0224_increment
  have h01 := blockTree0225_increment
  have h02 := blockTree0226_increment
  have h03 := blockTree0227_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
