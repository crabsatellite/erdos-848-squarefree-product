import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0178 : List (List ℕ) :=
  [[23, 43, 79],
     [23, 43, 83],
     [23, 43, 89],
     [23, 43, 97],
     [23, 47, 53],
     [23, 47, 59],
     [23, 47, 61],
     [23, 47, 67],
     [23, 47, 71],
     [23, 47, 73],
     [23, 47, 79],
     [23, 47, 83],
     [23, 47, 89],
     [23, 53, 59],
     [23, 53, 61],
     [23, 53, 67]]

theorem k4PrefixGroup0178_passes :
    k4PrefixGroup0178.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
