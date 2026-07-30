import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0600
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0601
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0602
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0603

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0150_increment :
    Nat.primeCounting (3029029 + 16384 - 1) <=
      Nat.primeCounting (3029029 - 1) + 1080 := by
  have h00 := blockTree0600_increment
  have h01 := blockTree0601_increment
  have h02 := blockTree0602_increment
  have h03 := blockTree0603_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
