import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0152 : List (List ℕ) :=
  [[17, 19, 89],
     [17, 19, 97],
     [17, 19, 101],
     [17, 19, 103],
     [17, 19, 107],
     [17, 19, 109],
     [17, 19, 113],
     [17, 19, 127],
     [17, 19, 131],
     [17, 19, 137],
     [17, 19, 139],
     [17, 19, 149],
     [17, 19, 151],
     [17, 19, 157],
     [17, 19, 163],
     [17, 19, 167]]

theorem k4PrefixGroup0152_passes :
    k4PrefixGroup0152.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
