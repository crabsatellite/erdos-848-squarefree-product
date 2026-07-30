import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0604
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0605
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0606
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0607

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0151_increment :
    Nat.primeCounting (3045413 + 16384 - 1) <=
      Nat.primeCounting (3045413 - 1) + 1083 := by
  have h00 := blockTree0604_increment
  have h01 := blockTree0605_increment
  have h02 := blockTree0606_increment
  have h03 := blockTree0607_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
