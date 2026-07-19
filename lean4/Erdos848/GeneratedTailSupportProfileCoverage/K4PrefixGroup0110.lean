import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0110 : List (List ℕ) :=
  [[11, 13, 101],
     [11, 13, 103],
     [11, 13, 107],
     [11, 13, 109],
     [11, 13, 113],
     [11, 13, 127],
     [11, 13, 131],
     [11, 13, 137],
     [11, 13, 139],
     [11, 13, 149],
     [11, 13, 151],
     [11, 13, 157],
     [11, 13, 163],
     [11, 13, 167],
     [11, 13, 173],
     [11, 13, 179]]

theorem k4PrefixGroup0110_passes :
    k4PrefixGroup0110.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
