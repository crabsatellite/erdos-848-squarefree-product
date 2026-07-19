import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0139 : List (List ℕ) :=
  [[13, 23, 137],
     [13, 23, 139],
     [13, 23, 149],
     [13, 23, 151],
     [13, 23, 157],
     [13, 23, 163],
     [13, 23, 167],
     [13, 23, 173],
     [13, 23, 179],
     [13, 29, 31],
     [13, 29, 37],
     [13, 29, 41],
     [13, 29, 43],
     [13, 29, 47],
     [13, 29, 53],
     [13, 29, 59]]

theorem k4PrefixGroup0139_passes :
    k4PrefixGroup0139.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
