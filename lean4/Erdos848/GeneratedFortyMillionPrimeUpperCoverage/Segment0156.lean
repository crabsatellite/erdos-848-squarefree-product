import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0624
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0625
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0626
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0627

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0156_increment :
    Nat.primeCounting (3127333 + 16384 - 1) <=
      Nat.primeCounting (3127333 - 1) + 1089 := by
  have h00 := blockTree0624_increment
  have h01 := blockTree0625_increment
  have h02 := blockTree0626_increment
  have h03 := blockTree0627_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
