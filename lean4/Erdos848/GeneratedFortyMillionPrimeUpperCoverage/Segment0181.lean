import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0724
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0725
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0726
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0727

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0181_increment :
    Nat.primeCounting (3536933 + 16384 - 1) <=
      Nat.primeCounting (3536933 - 1) + 1063 := by
  have h00 := blockTree0724_increment
  have h01 := blockTree0725_increment
  have h02 := blockTree0726_increment
  have h03 := blockTree0727_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
