import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0704
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0705
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0706
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0707

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0176_increment :
    Nat.primeCounting (3455013 + 16384 - 1) <=
      Nat.primeCounting (3455013 - 1) + 1055 := by
  have h00 := blockTree0704_increment
  have h01 := blockTree0705_increment
  have h02 := blockTree0706_increment
  have h03 := blockTree0707_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
