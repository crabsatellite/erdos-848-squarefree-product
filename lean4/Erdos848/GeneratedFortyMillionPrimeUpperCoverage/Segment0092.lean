import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0368
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0369
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0370
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0371

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0092_increment :
    Nat.primeCounting (2078757 + 16384 - 1) <=
      Nat.primeCounting (2078757 - 1) + 1122 := by
  have h00 := blockTree0368_increment
  have h01 := blockTree0369_increment
  have h02 := blockTree0370_increment
  have h03 := blockTree0371_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
