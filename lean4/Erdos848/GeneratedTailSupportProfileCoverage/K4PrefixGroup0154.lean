import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0154 : List (List ℕ) :=
  [[17, 23, 101],
     [17, 23, 103],
     [17, 23, 107],
     [17, 23, 109],
     [17, 23, 113],
     [17, 23, 127],
     [17, 23, 131],
     [17, 23, 137],
     [17, 23, 139],
     [17, 23, 149],
     [17, 23, 151],
     [17, 29, 31],
     [17, 29, 37],
     [17, 29, 41],
     [17, 29, 43],
     [17, 29, 47]]

theorem k4PrefixGroup0154_passes :
    k4PrefixGroup0154.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
