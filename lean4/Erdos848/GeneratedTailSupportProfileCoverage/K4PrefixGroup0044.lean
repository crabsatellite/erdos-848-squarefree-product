import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0044 : List (List ℕ) :=
  [[3, 41, 151],
     [3, 41, 157],
     [3, 41, 163],
     [3, 41, 167],
     [3, 41, 173],
     [3, 41, 179],
     [3, 41, 181],
     [3, 41, 191],
     [3, 41, 193],
     [3, 41, 197],
     [3, 41, 199],
     [3, 41, 211],
     [3, 41, 223],
     [3, 41, 227],
     [3, 41, 229],
     [3, 41, 233]]

theorem k4PrefixGroup0044_passes :
    k4PrefixGroup0044.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
