import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0536
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0537
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0538
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0539

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0134_increment :
    Nat.primeCounting (2766885 + 16384 - 1) <=
      Nat.primeCounting (2766885 - 1) + 1095 := by
  have h00 := blockTree0536_increment
  have h01 := blockTree0537_increment
  have h02 := blockTree0538_increment
  have h03 := blockTree0539_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
