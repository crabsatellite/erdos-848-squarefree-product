import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0136 : List (List ℕ) :=
  [[13, 19, 73],
     [13, 19, 79],
     [13, 19, 83],
     [13, 19, 89],
     [13, 19, 97],
     [13, 19, 101],
     [13, 19, 103],
     [13, 19, 107],
     [13, 19, 109],
     [13, 19, 113],
     [13, 19, 127],
     [13, 19, 131],
     [13, 19, 137],
     [13, 19, 139],
     [13, 19, 149],
     [13, 19, 151]]

theorem k4PrefixGroup0136_passes :
    k4PrefixGroup0136.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
