import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0676
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0677
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0678
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0679

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0169_increment :
    Nat.primeCounting (3340325 + 16384 - 1) <=
      Nat.primeCounting (3340325 - 1) + 1079 := by
  have h00 := blockTree0676_increment
  have h01 := blockTree0677_increment
  have h02 := blockTree0678_increment
  have h03 := blockTree0679_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
