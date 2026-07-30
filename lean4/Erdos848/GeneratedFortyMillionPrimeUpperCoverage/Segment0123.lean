import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0492
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0493
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0494
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0495

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0123_increment :
    Nat.primeCounting (2586661 + 16384 - 1) <=
      Nat.primeCounting (2586661 - 1) + 1102 := by
  have h00 := blockTree0492_increment
  have h01 := blockTree0493_increment
  have h02 := blockTree0494_increment
  have h03 := blockTree0495_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
