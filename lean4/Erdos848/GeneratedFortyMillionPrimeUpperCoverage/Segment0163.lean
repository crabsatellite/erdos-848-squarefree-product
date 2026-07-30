import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0652
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0653
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0654
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0655

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0163_increment :
    Nat.primeCounting (3242021 + 16384 - 1) <=
      Nat.primeCounting (3242021 - 1) + 1078 := by
  have h00 := blockTree0652_increment
  have h01 := blockTree0653_increment
  have h02 := blockTree0654_increment
  have h03 := blockTree0655_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
