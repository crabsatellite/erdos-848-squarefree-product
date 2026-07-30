import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0152
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0153
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0154
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0155

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0038_increment :
    Nat.primeCounting (1194021 + 16384 - 1) <=
      Nat.primeCounting (1194021 - 1) + 1128 := by
  have h00 := blockTree0152_increment
  have h01 := blockTree0153_increment
  have h02 := blockTree0154_increment
  have h03 := blockTree0155_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
