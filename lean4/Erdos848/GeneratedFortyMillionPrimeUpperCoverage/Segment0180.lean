import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0720
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0721
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0722
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0723

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0180_increment :
    Nat.primeCounting (3520549 + 16384 - 1) <=
      Nat.primeCounting (3520549 - 1) + 1069 := by
  have h00 := blockTree0720_increment
  have h01 := blockTree0721_increment
  have h02 := blockTree0722_increment
  have h03 := blockTree0723_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
