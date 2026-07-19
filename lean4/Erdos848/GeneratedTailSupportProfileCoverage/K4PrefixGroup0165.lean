import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0165 : List (List ℕ) :=
  [[19, 23, 131],
     [19, 23, 137],
     [19, 23, 139],
     [19, 23, 149],
     [19, 29, 31],
     [19, 29, 37],
     [19, 29, 41],
     [19, 29, 43],
     [19, 29, 47],
     [19, 29, 53],
     [19, 29, 59],
     [19, 29, 61],
     [19, 29, 67],
     [19, 29, 71],
     [19, 29, 73],
     [19, 29, 79]]

theorem k4PrefixGroup0165_passes :
    k4PrefixGroup0165.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
