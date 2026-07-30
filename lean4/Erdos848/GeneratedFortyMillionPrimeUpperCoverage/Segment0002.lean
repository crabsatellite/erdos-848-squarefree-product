import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0008
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0009
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0010
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0011

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0002_increment :
    Nat.primeCounting (604197 + 16384 - 1) <=
      Nat.primeCounting (604197 - 1) + 1242 := by
  have h00 := blockTree0008_increment
  have h01 := blockTree0009_increment
  have h02 := blockTree0010_increment
  have h03 := blockTree0011_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
