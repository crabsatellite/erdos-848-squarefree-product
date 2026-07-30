import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0360
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0361
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0362
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Block0363

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem segmentTree0090_increment :
    Nat.primeCounting (2045989 + 16384 - 1) <=
      Nat.primeCounting (2045989 - 1) + 1118 := by
  have h00 := blockTree0360_increment
  have h01 := blockTree0361_increment
  have h02 := blockTree0362_increment
  have h03 := blockTree0363_increment
  norm_num only at h00 h01 h02 h03 ⊢
  omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
