import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0564
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0565
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0566
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0567

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0141_increment :
    Nat.primeCounting (2881573 + 16384 - 1) <=
      Nat.primeCounting (2881573 - 1) + 1085 := by
  have h00 := blockTree0564_increment
  have h01 := blockTree0565_increment
  have h02 := blockTree0566_increment
  have h03 := blockTree0567_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
