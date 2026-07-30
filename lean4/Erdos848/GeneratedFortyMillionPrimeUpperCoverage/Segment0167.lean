import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0668
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0669
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0670
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0671

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0167_increment :
    Nat.primeCounting (3307557 + 16384 - 1) <=
      Nat.primeCounting (3307557 - 1) + 1088 := by
  have h00 := blockTree0668_increment
  have h01 := blockTree0669_increment
  have h02 := blockTree0670_increment
  have h03 := blockTree0671_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
