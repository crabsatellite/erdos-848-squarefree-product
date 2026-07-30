import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0128
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0129
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0130
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0131

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0032_increment :
    Nat.primeCounting (1095717 + 16384 - 1) <=
      Nat.primeCounting (1095717 - 1) + 1196 := by
  have h00 := blockTree0128_increment
  have h01 := blockTree0129_increment
  have h02 := blockTree0130_increment
  have h03 := blockTree0131_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
