import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0000
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0001
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0002
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0003

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0000_increment :
    Nat.primeCounting (571429 + 16384 - 1) <=
      Nat.primeCounting (571429 - 1) + 1258 := by
  have h00 := blockTree0000_increment
  have h01 := blockTree0001_increment
  have h02 := blockTree0002_increment
  have h03 := blockTree0003_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
