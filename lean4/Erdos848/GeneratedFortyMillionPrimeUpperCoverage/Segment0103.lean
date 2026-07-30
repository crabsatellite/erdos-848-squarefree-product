import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0412
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0413
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0414
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0415

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0103_increment :
    Nat.primeCounting (2258981 + 16384 - 1) <=
      Nat.primeCounting (2258981 - 1) + 1155 := by
  have h00 := blockTree0412_increment
  have h01 := blockTree0413_increment
  have h02 := blockTree0414_increment
  have h03 := blockTree0415_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
