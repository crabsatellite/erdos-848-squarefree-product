import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0692
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0693
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0694
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0695

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0173_increment :
    Nat.primeCounting (3405861 + 16384 - 1) <=
      Nat.primeCounting (3405861 - 1) + 1096 := by
  have h00 := blockTree0692_increment
  have h01 := blockTree0693_increment
  have h02 := blockTree0694_increment
  have h03 := blockTree0695_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
