import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0580
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0581
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0582
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0583

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0145_increment :
    Nat.primeCounting (2947109 + 16384 - 1) <=
      Nat.primeCounting (2947109 - 1) + 1098 := by
  have h00 := blockTree0580_increment
  have h01 := blockTree0581_increment
  have h02 := blockTree0582_increment
  have h03 := blockTree0583_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
