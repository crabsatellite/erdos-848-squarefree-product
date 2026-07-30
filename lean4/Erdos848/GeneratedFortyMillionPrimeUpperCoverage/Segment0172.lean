import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0688
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0689
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0690
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0691

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0172_increment :
    Nat.primeCounting (3389477 + 16384 - 1) <=
      Nat.primeCounting (3389477 - 1) + 1098 := by
  have h00 := blockTree0688_increment
  have h01 := blockTree0689_increment
  have h02 := blockTree0690_increment
  have h03 := blockTree0691_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
