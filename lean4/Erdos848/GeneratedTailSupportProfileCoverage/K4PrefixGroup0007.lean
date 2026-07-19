import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0007 : List (List ℕ) :=
  [[3, 7, 643],
     [3, 7, 647],
     [3, 7, 653],
     [3, 7, 659],
     [3, 7, 661],
     [3, 7, 673],
     [3, 7, 677],
     [3, 7, 683],
     [3, 11, 13],
     [3, 11, 17],
     [3, 11, 19],
     [3, 11, 23],
     [3, 11, 29],
     [3, 11, 31],
     [3, 11, 37],
     [3, 11, 41]]

theorem k4PrefixGroup0007_passes :
    k4PrefixGroup0007.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
