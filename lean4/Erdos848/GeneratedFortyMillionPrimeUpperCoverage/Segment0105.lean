import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0420
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0421
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0422
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0423

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0105_increment :
    Nat.primeCounting (2291749 + 16384 - 1) <=
      Nat.primeCounting (2291749 - 1) + 1118 := by
  have h00 := blockTree0420_increment
  have h01 := blockTree0421_increment
  have h02 := blockTree0422_increment
  have h03 := blockTree0423_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
