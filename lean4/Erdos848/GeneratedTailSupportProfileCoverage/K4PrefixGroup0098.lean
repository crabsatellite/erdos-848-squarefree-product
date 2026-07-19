import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0098 : List (List ℕ) :=
  [[7, 43, 97],
     [7, 43, 101],
     [7, 43, 103],
     [7, 43, 107],
     [7, 43, 109],
     [7, 43, 113],
     [7, 43, 127],
     [7, 43, 131],
     [7, 43, 137],
     [7, 43, 139],
     [7, 43, 149],
     [7, 43, 151],
     [7, 43, 157],
     [7, 43, 163],
     [7, 43, 167],
     [7, 43, 173]]

theorem k4PrefixGroup0098_passes :
    k4PrefixGroup0098.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
