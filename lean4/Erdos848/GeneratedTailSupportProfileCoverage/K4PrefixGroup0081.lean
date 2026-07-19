import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0081 : List (List ℕ) :=
  [[7, 17, 103],
     [7, 17, 107],
     [7, 17, 109],
     [7, 17, 113],
     [7, 17, 127],
     [7, 17, 131],
     [7, 17, 137],
     [7, 17, 139],
     [7, 17, 149],
     [7, 17, 151],
     [7, 17, 157],
     [7, 17, 163],
     [7, 17, 167],
     [7, 17, 173],
     [7, 17, 179],
     [7, 17, 181]]

theorem k4PrefixGroup0081_passes :
    k4PrefixGroup0081.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
