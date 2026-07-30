import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0740
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0741
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0742
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0743

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0185_increment :
    Nat.primeCounting (3602469 + 16384 - 1) <=
      Nat.primeCounting (3602469 - 1) + 1126 := by
  have h00 := blockTree0740_increment
  have h01 := blockTree0741_increment
  have h02 := blockTree0742_increment
  have h03 := blockTree0743_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
