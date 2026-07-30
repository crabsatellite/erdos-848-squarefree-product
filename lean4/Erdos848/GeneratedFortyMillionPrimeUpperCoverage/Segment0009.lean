import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0036
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0037
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0038
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0039

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0009_increment :
    Nat.primeCounting (718885 + 16384 - 1) <=
      Nat.primeCounting (718885 - 1) + 1231 := by
  have h00 := blockTree0036_increment
  have h01 := blockTree0037_increment
  have h02 := blockTree0038_increment
  have h03 := blockTree0039_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
