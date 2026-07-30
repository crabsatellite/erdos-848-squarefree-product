import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0508
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0509
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0510
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0511

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0127_increment :
    Nat.primeCounting (2652197 + 16384 - 1) <=
      Nat.primeCounting (2652197 - 1) + 1111 := by
  have h00 := blockTree0508_increment
  have h01 := blockTree0509_increment
  have h02 := blockTree0510_increment
  have h03 := blockTree0511_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
