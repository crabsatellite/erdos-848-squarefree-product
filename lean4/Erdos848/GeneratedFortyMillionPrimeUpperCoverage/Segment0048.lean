import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0192
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0193
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0194
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0195

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0048_increment :
    Nat.primeCounting (1357861 + 16384 - 1) <=
      Nat.primeCounting (1357861 - 1) + 1154 := by
  have h00 := blockTree0192_increment
  have h01 := blockTree0193_increment
  have h02 := blockTree0194_increment
  have h03 := blockTree0195_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
