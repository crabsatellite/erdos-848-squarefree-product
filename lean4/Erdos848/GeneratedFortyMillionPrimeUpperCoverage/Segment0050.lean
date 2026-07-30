import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0200
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0201
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0202
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0203

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0050_increment :
    Nat.primeCounting (1390629 + 16384 - 1) <=
      Nat.primeCounting (1390629 - 1) + 1163 := by
  have h00 := blockTree0200_increment
  have h01 := blockTree0201_increment
  have h02 := blockTree0202_increment
  have h03 := blockTree0203_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
