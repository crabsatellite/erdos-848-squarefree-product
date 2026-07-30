import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0164
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0165
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0166
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0167

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0041_increment :
    Nat.primeCounting (1243173 + 16384 - 1) <=
      Nat.primeCounting (1243173 - 1) + 1188 := by
  have h00 := blockTree0164_increment
  have h01 := blockTree0165_increment
  have h02 := blockTree0166_increment
  have h03 := blockTree0167_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
