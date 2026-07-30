import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0268
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0269
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0270
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0271

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0067_increment :
    Nat.primeCounting (1669157 + 16384 - 1) <=
      Nat.primeCounting (1669157 - 1) + 1142 := by
  have h00 := blockTree0268_increment
  have h01 := blockTree0269_increment
  have h02 := blockTree0270_increment
  have h03 := blockTree0271_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
