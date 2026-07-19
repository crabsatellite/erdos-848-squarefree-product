import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0133 : List (List ℕ) :=
  [[13, 17, 31],
     [13, 17, 37],
     [13, 17, 41],
     [13, 17, 43],
     [13, 17, 47],
     [13, 17, 53],
     [13, 17, 59],
     [13, 17, 61],
     [13, 17, 67],
     [13, 17, 71],
     [13, 17, 73],
     [13, 17, 79],
     [13, 17, 83],
     [13, 17, 89],
     [13, 17, 97],
     [13, 17, 101]]

theorem k4PrefixGroup0133_passes :
    k4PrefixGroup0133.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
