import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0708
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0709
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0710
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0711

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0177_increment :
    Nat.primeCounting (3471397 + 16384 - 1) <=
      Nat.primeCounting (3471397 - 1) + 1050 := by
  have h00 := blockTree0708_increment
  have h01 := blockTree0709_increment
  have h02 := blockTree0710_increment
  have h03 := blockTree0711_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
