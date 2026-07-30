import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0052
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0053
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0054
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0055

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0013_increment :
    Nat.primeCounting (784421 + 16384 - 1) <=
      Nat.primeCounting (784421 - 1) + 1226 := by
  have h00 := blockTree0052_increment
  have h01 := blockTree0053_increment
  have h02 := blockTree0054_increment
  have h03 := blockTree0055_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
