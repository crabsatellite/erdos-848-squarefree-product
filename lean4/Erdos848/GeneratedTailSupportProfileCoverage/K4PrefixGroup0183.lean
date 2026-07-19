import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0183 : List (List ℕ) :=
  [[29, 47, 59],
     [29, 47, 61],
     [29, 47, 67],
     [29, 47, 71],
     [29, 47, 73],
     [29, 47, 79],
     [29, 53, 59],
     [29, 53, 61],
     [29, 53, 67],
     [29, 53, 71],
     [29, 53, 73],
     [29, 59, 61],
     [29, 59, 67],
     [29, 59, 71],
     [29, 59, 73],
     [29, 61, 67]]

theorem k4PrefixGroup0183_passes :
    k4PrefixGroup0183.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
