import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0076
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0077
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0078
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0079

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0019_increment :
    Nat.primeCounting (882725 + 16384 - 1) <=
      Nat.primeCounting (882725 - 1) + 1192 := by
  have h00 := blockTree0076_increment
  have h01 := blockTree0077_increment
  have h02 := blockTree0078_increment
  have h03 := blockTree0079_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
