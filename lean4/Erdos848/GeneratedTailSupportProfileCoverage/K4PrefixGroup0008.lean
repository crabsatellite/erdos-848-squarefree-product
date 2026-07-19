import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0008 : List (List ℕ) :=
  [[3, 11, 43],
     [3, 11, 47],
     [3, 11, 53],
     [3, 11, 59],
     [3, 11, 61],
     [3, 11, 67],
     [3, 11, 71],
     [3, 11, 73],
     [3, 11, 79],
     [3, 11, 83],
     [3, 11, 89],
     [3, 11, 97],
     [3, 11, 101],
     [3, 11, 103],
     [3, 11, 107],
     [3, 11, 109]]

theorem k4PrefixGroup0008_passes :
    k4PrefixGroup0008.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
