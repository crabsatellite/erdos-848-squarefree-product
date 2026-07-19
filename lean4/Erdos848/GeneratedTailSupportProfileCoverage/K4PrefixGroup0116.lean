import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0116 : List (List ℕ) :=
  [[11, 19, 131],
     [11, 19, 137],
     [11, 19, 139],
     [11, 19, 149],
     [11, 19, 151],
     [11, 19, 157],
     [11, 19, 163],
     [11, 19, 167],
     [11, 19, 173],
     [11, 19, 179],
     [11, 19, 181],
     [11, 19, 191],
     [11, 19, 193],
     [11, 19, 197],
     [11, 19, 199],
     [11, 19, 211]]

theorem k4PrefixGroup0116_passes :
    k4PrefixGroup0116.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
