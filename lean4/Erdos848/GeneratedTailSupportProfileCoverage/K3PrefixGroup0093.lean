import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0093 : List (List ℕ) :=
  [[43, 89],
     [43, 97],
     [43, 101],
     [43, 103],
     [43, 107],
     [43, 109],
     [43, 113],
     [43, 127],
     [43, 131],
     [43, 137],
     [43, 139],
     [43, 149],
     [43, 151],
     [43, 157],
     [43, 163],
     [43, 167]]

theorem k3PrefixGroup0093_passes :
    k3PrefixGroup0093.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
