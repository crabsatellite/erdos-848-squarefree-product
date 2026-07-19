import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0036 : List (List ℕ) :=
  [[3, 29, 331],
     [3, 31, 37],
     [3, 31, 41],
     [3, 31, 43],
     [3, 31, 47],
     [3, 31, 53],
     [3, 31, 59],
     [3, 31, 61],
     [3, 31, 67],
     [3, 31, 71],
     [3, 31, 73],
     [3, 31, 79],
     [3, 31, 83],
     [3, 31, 89],
     [3, 31, 97],
     [3, 31, 101]]

theorem k4PrefixGroup0036_passes :
    k4PrefixGroup0036.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
