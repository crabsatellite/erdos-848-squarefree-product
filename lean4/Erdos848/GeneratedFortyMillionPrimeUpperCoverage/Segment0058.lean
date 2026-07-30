import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0232
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0233
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0234
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0235

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0058_increment :
    Nat.primeCounting (1521701 + 16384 - 1) <=
      Nat.primeCounting (1521701 - 1) + 1132 := by
  have h00 := blockTree0232_increment
  have h01 := blockTree0233_increment
  have h02 := blockTree0234_increment
  have h03 := blockTree0235_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
