import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0086 : List (List ℕ) :=
  [[7, 19, 251],
     [7, 19, 257],
     [7, 19, 263],
     [7, 19, 269],
     [7, 19, 271],
     [7, 23, 29],
     [7, 23, 31],
     [7, 23, 37],
     [7, 23, 41],
     [7, 23, 43],
     [7, 23, 47],
     [7, 23, 53],
     [7, 23, 59],
     [7, 23, 61],
     [7, 23, 67],
     [7, 23, 71]]

theorem k4PrefixGroup0086_passes :
    k4PrefixGroup0086.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
