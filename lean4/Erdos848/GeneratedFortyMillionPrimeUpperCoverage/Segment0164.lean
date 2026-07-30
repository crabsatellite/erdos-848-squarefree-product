import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0656
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0657
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0658
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0659

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0164_increment :
    Nat.primeCounting (3258405 + 16384 - 1) <=
      Nat.primeCounting (3258405 - 1) + 1094 := by
  have h00 := blockTree0656_increment
  have h01 := blockTree0657_increment
  have h02 := blockTree0658_increment
  have h03 := blockTree0659_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
