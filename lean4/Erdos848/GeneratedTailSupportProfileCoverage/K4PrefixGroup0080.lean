import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0080 : List (List ℕ) :=
  [[7, 17, 31],
     [7, 17, 37],
     [7, 17, 41],
     [7, 17, 43],
     [7, 17, 47],
     [7, 17, 53],
     [7, 17, 59],
     [7, 17, 61],
     [7, 17, 67],
     [7, 17, 71],
     [7, 17, 73],
     [7, 17, 79],
     [7, 17, 83],
     [7, 17, 89],
     [7, 17, 97],
     [7, 17, 101]]

theorem k4PrefixGroup0080_passes :
    k4PrefixGroup0080.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
