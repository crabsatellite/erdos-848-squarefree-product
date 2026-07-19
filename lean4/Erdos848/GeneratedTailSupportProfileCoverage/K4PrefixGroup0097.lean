import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0097 : List (List ℕ) :=
  [[7, 41, 157],
     [7, 41, 163],
     [7, 41, 167],
     [7, 41, 173],
     [7, 41, 179],
     [7, 41, 181],
     [7, 43, 47],
     [7, 43, 53],
     [7, 43, 59],
     [7, 43, 61],
     [7, 43, 67],
     [7, 43, 71],
     [7, 43, 73],
     [7, 43, 79],
     [7, 43, 83],
     [7, 43, 89]]

theorem k4PrefixGroup0097_passes :
    k4PrefixGroup0097.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
