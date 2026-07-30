import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0728
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0729
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0730
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0731

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0182_increment :
    Nat.primeCounting (3553317 + 16384 - 1) <=
      Nat.primeCounting (3553317 - 1) + 1097 := by
  have h00 := blockTree0728_increment
  have h01 := blockTree0729_increment
  have h02 := blockTree0730_increment
  have h03 := blockTree0731_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
