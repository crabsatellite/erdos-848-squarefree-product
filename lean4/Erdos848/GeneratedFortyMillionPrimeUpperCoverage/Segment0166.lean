import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0664
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0665
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0666
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0667

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0166_increment :
    Nat.primeCounting (3291173 + 16384 - 1) <=
      Nat.primeCounting (3291173 - 1) + 1068 := by
  have h00 := blockTree0664_increment
  have h01 := blockTree0665_increment
  have h02 := blockTree0666_increment
  have h03 := blockTree0667_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
