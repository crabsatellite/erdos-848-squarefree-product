import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0520
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0521
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0522
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0523

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0130_increment :
    Nat.primeCounting (2701349 + 16384 - 1) <=
      Nat.primeCounting (2701349 - 1) + 1117 := by
  have h00 := blockTree0520_increment
  have h01 := blockTree0521_increment
  have h02 := blockTree0522_increment
  have h03 := blockTree0523_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
