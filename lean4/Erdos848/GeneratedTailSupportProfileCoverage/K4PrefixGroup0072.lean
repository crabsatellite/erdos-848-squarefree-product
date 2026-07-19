import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0072 : List (List ℕ) :=
  [[7, 11, 17],
     [7, 11, 19],
     [7, 11, 23],
     [7, 11, 29],
     [7, 11, 31],
     [7, 11, 37],
     [7, 11, 41],
     [7, 11, 43],
     [7, 11, 47],
     [7, 11, 53],
     [7, 11, 59],
     [7, 11, 61],
     [7, 11, 67],
     [7, 11, 71],
     [7, 11, 73],
     [7, 11, 79]]

theorem k4PrefixGroup0072_passes :
    k4PrefixGroup0072.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
