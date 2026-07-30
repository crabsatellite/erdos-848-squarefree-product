import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0524
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0525
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0526
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0527

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0131_increment :
    Nat.primeCounting (2717733 + 16384 - 1) <=
      Nat.primeCounting (2717733 - 1) + 1082 := by
  have h00 := blockTree0524_increment
  have h01 := blockTree0525_increment
  have h02 := blockTree0526_increment
  have h03 := blockTree0527_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
