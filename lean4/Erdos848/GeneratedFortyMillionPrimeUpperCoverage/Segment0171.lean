import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0684
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0685
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0686
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0687

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0171_increment :
    Nat.primeCounting (3373093 + 16384 - 1) <=
      Nat.primeCounting (3373093 - 1) + 1100 := by
  have h00 := blockTree0684_increment
  have h01 := blockTree0685_increment
  have h02 := blockTree0686_increment
  have h03 := blockTree0687_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
