import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0208
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0209
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0210
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0211

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0052_increment :
    Nat.primeCounting (1423397 + 16384 - 1) <=
      Nat.primeCounting (1423397 - 1) + 1191 := by
  have h00 := blockTree0208_increment
  have h01 := blockTree0209_increment
  have h02 := blockTree0210_increment
  have h03 := blockTree0211_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
