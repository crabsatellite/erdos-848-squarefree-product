import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0020
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0021
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0022
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0023

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0005_increment :
    Nat.primeCounting (653349 + 16384 - 1) <=
      Nat.primeCounting (653349 - 1) + 1218 := by
  have h00 := blockTree0020_increment
  have h01 := blockTree0021_increment
  have h02 := blockTree0022_increment
  have h03 := blockTree0023_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
