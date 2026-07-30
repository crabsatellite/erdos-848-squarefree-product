import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0244
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0245
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0246
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0247

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0061_increment :
    Nat.primeCounting (1570853 + 16384 - 1) <=
      Nat.primeCounting (1570853 - 1) + 1131 := by
  have h00 := blockTree0244_increment
  have h01 := blockTree0245_increment
  have h02 := blockTree0246_increment
  have h03 := blockTree0247_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
