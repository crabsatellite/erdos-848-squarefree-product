import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0018 : List (List ℕ) :=
  [[7, 53],
     [7, 59],
     [7, 61],
     [7, 67],
     [7, 71],
     [7, 73],
     [7, 79],
     [7, 83],
     [7, 89],
     [7, 97],
     [7, 101],
     [7, 103],
     [7, 107],
     [7, 109],
     [7, 113],
     [7, 127]]

theorem k3PrefixGroup0018_passes :
    k3PrefixGroup0018.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
