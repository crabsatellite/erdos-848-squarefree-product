import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0099 : List (List ℕ) :=
  [[7, 43, 179],
     [7, 47, 53],
     [7, 47, 59],
     [7, 47, 61],
     [7, 47, 67],
     [7, 47, 71],
     [7, 47, 73],
     [7, 47, 79],
     [7, 47, 83],
     [7, 47, 89],
     [7, 47, 97],
     [7, 47, 101],
     [7, 47, 103],
     [7, 47, 107],
     [7, 47, 109],
     [7, 47, 113]]

theorem k4PrefixGroup0099_passes :
    k4PrefixGroup0099.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
