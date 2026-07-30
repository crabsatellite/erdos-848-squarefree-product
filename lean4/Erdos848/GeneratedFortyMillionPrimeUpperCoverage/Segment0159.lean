import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0636
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0637
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0638
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0639

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0159_increment :
    Nat.primeCounting (3176485 + 16384 - 1) <=
      Nat.primeCounting (3176485 - 1) + 1102 := by
  have h00 := blockTree0636_increment
  have h01 := blockTree0637_increment
  have h02 := blockTree0638_increment
  have h03 := blockTree0639_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
