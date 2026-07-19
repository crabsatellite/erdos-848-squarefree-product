import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0033 : List (List ℕ) :=
  [[3, 29, 67],
     [3, 29, 71],
     [3, 29, 73],
     [3, 29, 79],
     [3, 29, 83],
     [3, 29, 89],
     [3, 29, 97],
     [3, 29, 101],
     [3, 29, 103],
     [3, 29, 107],
     [3, 29, 109],
     [3, 29, 113],
     [3, 29, 127],
     [3, 29, 131],
     [3, 29, 137],
     [3, 29, 139]]

theorem k4PrefixGroup0033_passes :
    k4PrefixGroup0033.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
