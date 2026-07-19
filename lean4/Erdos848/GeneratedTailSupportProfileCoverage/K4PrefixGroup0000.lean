import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0000 : List (List ℕ) :=
  [[3, 7, 11],
     [3, 7, 13],
     [3, 7, 17],
     [3, 7, 19],
     [3, 7, 23],
     [3, 7, 29],
     [3, 7, 31],
     [3, 7, 37],
     [3, 7, 41],
     [3, 7, 43],
     [3, 7, 47],
     [3, 7, 53],
     [3, 7, 59],
     [3, 7, 61],
     [3, 7, 67],
     [3, 7, 71]]

theorem k4PrefixGroup0000_passes :
    k4PrefixGroup0000.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
