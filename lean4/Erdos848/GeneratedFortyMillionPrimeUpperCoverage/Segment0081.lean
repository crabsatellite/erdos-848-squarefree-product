import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0324
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0325
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0326
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0327

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0081_increment :
    Nat.primeCounting (1898533 + 16384 - 1) <=
      Nat.primeCounting (1898533 - 1) + 1131 := by
  have h00 := blockTree0324_increment
  have h01 := blockTree0325_increment
  have h02 := blockTree0326_increment
  have h03 := blockTree0327_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
