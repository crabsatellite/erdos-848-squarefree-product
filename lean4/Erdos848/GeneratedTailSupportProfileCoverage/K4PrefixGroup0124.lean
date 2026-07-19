import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0124 : List (List ℕ) :=
  [[11, 37, 127],
     [11, 37, 131],
     [11, 37, 137],
     [11, 37, 139],
     [11, 37, 149],
     [11, 37, 151],
     [11, 41, 43],
     [11, 41, 47],
     [11, 41, 53],
     [11, 41, 59],
     [11, 41, 61],
     [11, 41, 67],
     [11, 41, 71],
     [11, 41, 73],
     [11, 41, 79],
     [11, 41, 83]]

theorem k4PrefixGroup0124_passes :
    k4PrefixGroup0124.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
