import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0024 : List (List ℕ) :=
  [[3, 19, 29],
     [3, 19, 31],
     [3, 19, 37],
     [3, 19, 41],
     [3, 19, 43],
     [3, 19, 47],
     [3, 19, 53],
     [3, 19, 59],
     [3, 19, 61],
     [3, 19, 67],
     [3, 19, 71],
     [3, 19, 73],
     [3, 19, 79],
     [3, 19, 83],
     [3, 19, 89],
     [3, 19, 97]]

theorem k4PrefixGroup0024_passes :
    k4PrefixGroup0024.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
