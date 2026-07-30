import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0416
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0417
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0418
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0419

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0104_increment :
    Nat.primeCounting (2275365 + 16384 - 1) <=
      Nat.primeCounting (2275365 - 1) + 1085 := by
  have h00 := blockTree0416_increment
  have h01 := blockTree0417_increment
  have h02 := blockTree0418_increment
  have h03 := blockTree0419_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
