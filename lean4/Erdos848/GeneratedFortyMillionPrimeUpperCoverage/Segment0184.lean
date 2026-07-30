import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0736
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0737
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0738
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0739

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0184_increment :
    Nat.primeCounting (3586085 + 16384 - 1) <=
      Nat.primeCounting (3586085 - 1) + 1100 := by
  have h00 := blockTree0736_increment
  have h01 := blockTree0737_increment
  have h02 := blockTree0738_increment
  have h03 := blockTree0739_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
