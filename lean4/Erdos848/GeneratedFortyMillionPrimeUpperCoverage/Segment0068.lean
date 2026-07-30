import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0272
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0273
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0274
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0275

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0068_increment :
    Nat.primeCounting (1685541 + 16384 - 1) <=
      Nat.primeCounting (1685541 - 1) + 1161 := by
  have h00 := blockTree0272_increment
  have h01 := blockTree0273_increment
  have h02 := blockTree0274_increment
  have h03 := blockTree0275_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
