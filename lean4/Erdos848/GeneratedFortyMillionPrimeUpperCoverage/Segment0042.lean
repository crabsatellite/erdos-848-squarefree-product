import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0168
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0169
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0170
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0171

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0042_increment :
    Nat.primeCounting (1259557 + 16384 - 1) <=
      Nat.primeCounting (1259557 - 1) + 1168 := by
  have h00 := blockTree0168_increment
  have h01 := blockTree0169_increment
  have h02 := blockTree0170_increment
  have h03 := blockTree0171_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
