import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0077 : List (List ℕ) :=
  [[31, 79],
     [31, 83],
     [31, 89],
     [31, 97],
     [31, 101],
     [31, 103],
     [31, 107],
     [31, 109],
     [31, 113],
     [31, 127],
     [31, 131],
     [31, 137],
     [31, 139],
     [31, 149],
     [31, 151],
     [31, 157]]

theorem k3PrefixGroup0077_passes :
    k3PrefixGroup0077.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
