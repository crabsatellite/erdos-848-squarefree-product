import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0608
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0609
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0610
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0611

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0152_increment :
    Nat.primeCounting (3061797 + 16384 - 1) <=
      Nat.primeCounting (3061797 - 1) + 1111 := by
  have h00 := blockTree0608_increment
  have h01 := blockTree0609_increment
  have h02 := blockTree0610_increment
  have h03 := blockTree0611_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
