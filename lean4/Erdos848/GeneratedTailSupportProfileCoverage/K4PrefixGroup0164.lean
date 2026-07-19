import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0164 : List (List ℕ) :=
  [[19, 23, 53],
     [19, 23, 59],
     [19, 23, 61],
     [19, 23, 67],
     [19, 23, 71],
     [19, 23, 73],
     [19, 23, 79],
     [19, 23, 83],
     [19, 23, 89],
     [19, 23, 97],
     [19, 23, 101],
     [19, 23, 103],
     [19, 23, 107],
     [19, 23, 109],
     [19, 23, 113],
     [19, 23, 127]]

theorem k4PrefixGroup0164_passes :
    k4PrefixGroup0164.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
