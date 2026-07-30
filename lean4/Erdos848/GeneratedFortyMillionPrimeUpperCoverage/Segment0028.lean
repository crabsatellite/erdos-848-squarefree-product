import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0112
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0113
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0114
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0115

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0028_increment :
    Nat.primeCounting (1030181 + 16384 - 1) <=
      Nat.primeCounting (1030181 - 1) + 1164 := by
  have h00 := blockTree0112_increment
  have h01 := blockTree0113_increment
  have h02 := blockTree0114_increment
  have h03 := blockTree0115_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
