import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0236
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0237
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0238
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0239

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0059_increment :
    Nat.primeCounting (1538085 + 16384 - 1) <=
      Nat.primeCounting (1538085 - 1) + 1140 := by
  have h00 := blockTree0236_increment
  have h01 := blockTree0237_increment
  have h02 := blockTree0238_increment
  have h03 := blockTree0239_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
