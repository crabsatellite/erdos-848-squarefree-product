import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0356
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0357
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0358
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0359

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0089_increment :
    Nat.primeCounting (2029605 + 16384 - 1) <=
      Nat.primeCounting (2029605 - 1) + 1126 := by
  have h00 := blockTree0356_increment
  have h01 := blockTree0357_increment
  have h02 := blockTree0358_increment
  have h03 := blockTree0359_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
