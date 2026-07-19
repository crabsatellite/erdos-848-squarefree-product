import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0115 : List (List ℕ) :=
  [[11, 19, 53],
     [11, 19, 59],
     [11, 19, 61],
     [11, 19, 67],
     [11, 19, 71],
     [11, 19, 73],
     [11, 19, 79],
     [11, 19, 83],
     [11, 19, 89],
     [11, 19, 97],
     [11, 19, 101],
     [11, 19, 103],
     [11, 19, 107],
     [11, 19, 109],
     [11, 19, 113],
     [11, 19, 127]]

theorem k4PrefixGroup0115_passes :
    k4PrefixGroup0115.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
