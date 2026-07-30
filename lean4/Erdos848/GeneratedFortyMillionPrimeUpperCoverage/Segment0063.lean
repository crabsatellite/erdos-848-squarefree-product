import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0252
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0253
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0254
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0255

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0063_increment :
    Nat.primeCounting (1603621 + 16384 - 1) <=
      Nat.primeCounting (1603621 - 1) + 1138 := by
  have h00 := blockTree0252_increment
  have h01 := blockTree0253_increment
  have h02 := blockTree0254_increment
  have h03 := blockTree0255_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
