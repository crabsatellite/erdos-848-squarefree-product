import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0041 : List (List ℕ) :=
  [[3, 37, 157],
     [3, 37, 163],
     [3, 37, 167],
     [3, 37, 173],
     [3, 37, 179],
     [3, 37, 181],
     [3, 37, 191],
     [3, 37, 193],
     [3, 37, 197],
     [3, 37, 199],
     [3, 37, 211],
     [3, 37, 223],
     [3, 37, 227],
     [3, 37, 229],
     [3, 37, 233],
     [3, 37, 239]]

theorem k4PrefixGroup0041_passes :
    k4PrefixGroup0041.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
