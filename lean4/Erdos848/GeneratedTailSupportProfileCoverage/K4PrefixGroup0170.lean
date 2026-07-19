import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0170 : List (List ℕ) :=
  [[19, 43, 53],
     [19, 43, 59],
     [19, 43, 61],
     [19, 43, 67],
     [19, 43, 71],
     [19, 43, 73],
     [19, 43, 79],
     [19, 43, 83],
     [19, 43, 89],
     [19, 43, 97],
     [19, 43, 101],
     [19, 43, 103],
     [19, 43, 107],
     [19, 47, 53],
     [19, 47, 59],
     [19, 47, 61]]

theorem k4PrefixGroup0170_passes :
    k4PrefixGroup0170.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
