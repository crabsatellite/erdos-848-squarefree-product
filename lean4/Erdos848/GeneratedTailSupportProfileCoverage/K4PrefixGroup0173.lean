import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0173 : List (List ℕ) :=
  [[19, 67, 79],
     [19, 67, 83],
     [19, 71, 73],
     [19, 71, 79],
     [19, 71, 83],
     [19, 73, 79],
     [23, 29, 31],
     [23, 29, 37],
     [23, 29, 41],
     [23, 29, 43],
     [23, 29, 47],
     [23, 29, 53],
     [23, 29, 59],
     [23, 29, 61],
     [23, 29, 67],
     [23, 29, 71]]

theorem k4PrefixGroup0173_passes :
    k4PrefixGroup0173.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
