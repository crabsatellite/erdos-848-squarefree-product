import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0448
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0449
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0450
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0451

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0112_increment :
    Nat.primeCounting (2406437 + 16384 - 1) <=
      Nat.primeCounting (2406437 - 1) + 1128 := by
  have h00 := blockTree0448_increment
  have h01 := blockTree0449_increment
  have h02 := blockTree0450_increment
  have h03 := blockTree0451_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
