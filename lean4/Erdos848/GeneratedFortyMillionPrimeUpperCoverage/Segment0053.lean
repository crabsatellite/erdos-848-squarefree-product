import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0212
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0213
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0214
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0215

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0053_increment :
    Nat.primeCounting (1439781 + 16384 - 1) <=
      Nat.primeCounting (1439781 - 1) + 1164 := by
  have h00 := blockTree0212_increment
  have h01 := blockTree0213_increment
  have h02 := blockTree0214_increment
  have h03 := blockTree0215_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
