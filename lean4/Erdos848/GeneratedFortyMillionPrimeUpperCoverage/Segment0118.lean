import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0472
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0473
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0474
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0475

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0118_increment :
    Nat.primeCounting (2504741 + 16384 - 1) <=
      Nat.primeCounting (2504741 - 1) + 1101 := by
  have h00 := blockTree0472_increment
  have h01 := blockTree0473_increment
  have h02 := blockTree0474_increment
  have h03 := blockTree0475_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
