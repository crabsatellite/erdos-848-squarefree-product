import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0016
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0017
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0018
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0019

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0004_increment :
    Nat.primeCounting (636965 + 16384 - 1) <=
      Nat.primeCounting (636965 - 1) + 1204 := by
  have h00 := blockTree0016_increment
  have h01 := blockTree0017_increment
  have h02 := blockTree0018_increment
  have h03 := blockTree0019_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
