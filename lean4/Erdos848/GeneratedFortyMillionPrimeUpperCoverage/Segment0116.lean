import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0464
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0465
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0466
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0467

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0116_increment :
    Nat.primeCounting (2471973 + 16384 - 1) <=
      Nat.primeCounting (2471973 - 1) + 1115 := by
  have h00 := blockTree0464_increment
  have h01 := blockTree0465_increment
  have h02 := blockTree0466_increment
  have h03 := blockTree0467_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
