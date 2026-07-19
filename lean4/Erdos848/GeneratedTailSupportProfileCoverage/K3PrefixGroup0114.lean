import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0114 : List (List ℕ) :=
  [[67, 101],
     [67, 103],
     [67, 107],
     [67, 109],
     [67, 113],
     [67, 127],
     [67, 131],
     [67, 137],
     [67, 139],
     [67, 149],
     [67, 151],
     [67, 157],
     [67, 163],
     [67, 167],
     [67, 173],
     [67, 179]]

theorem k3PrefixGroup0114_passes :
    k3PrefixGroup0114.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
