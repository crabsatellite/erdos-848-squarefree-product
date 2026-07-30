import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0136
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0137
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0138
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0139

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0034_increment :
    Nat.primeCounting (1128485 + 16384 - 1) <=
      Nat.primeCounting (1128485 - 1) + 1175 := by
  have h00 := blockTree0136_increment
  have h01 := blockTree0137_increment
  have h02 := blockTree0138_increment
  have h03 := blockTree0139_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
