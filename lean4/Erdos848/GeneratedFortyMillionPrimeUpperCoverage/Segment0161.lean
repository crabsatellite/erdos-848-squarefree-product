import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0644
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0645
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0646
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0647

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0161_increment :
    Nat.primeCounting (3209253 + 16384 - 1) <=
      Nat.primeCounting (3209253 - 1) + 1101 := by
  have h00 := blockTree0644_increment
  have h01 := blockTree0645_increment
  have h02 := blockTree0646_increment
  have h03 := blockTree0647_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
