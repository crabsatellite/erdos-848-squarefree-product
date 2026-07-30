import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0144
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0145
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0146
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0147

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0036_increment :
    Nat.primeCounting (1161253 + 16384 - 1) <=
      Nat.primeCounting (1161253 - 1) + 1187 := by
  have h00 := blockTree0144_increment
  have h01 := blockTree0145_increment
  have h02 := blockTree0146_increment
  have h03 := blockTree0147_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
