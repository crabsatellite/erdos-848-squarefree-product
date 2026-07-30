import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0628
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0629
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0630
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0631

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0157_increment :
    Nat.primeCounting (3143717 + 16384 - 1) <=
      Nat.primeCounting (3143717 - 1) + 1105 := by
  have h00 := blockTree0628_increment
  have h01 := blockTree0629_increment
  have h02 := blockTree0630_increment
  have h03 := blockTree0631_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
