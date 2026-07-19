import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0002 : List (List ℕ) :=
  [[3, 7, 157],
     [3, 7, 163],
     [3, 7, 167],
     [3, 7, 173],
     [3, 7, 179],
     [3, 7, 181],
     [3, 7, 191],
     [3, 7, 193],
     [3, 7, 197],
     [3, 7, 199],
     [3, 7, 211],
     [3, 7, 223],
     [3, 7, 227],
     [3, 7, 229],
     [3, 7, 233],
     [3, 7, 239]]

theorem k4PrefixGroup0002_passes :
    k4PrefixGroup0002.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
