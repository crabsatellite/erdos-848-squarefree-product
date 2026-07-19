import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0034 : List (List ℕ) :=
  [[3, 29, 149],
     [3, 29, 151],
     [3, 29, 157],
     [3, 29, 163],
     [3, 29, 167],
     [3, 29, 173],
     [3, 29, 179],
     [3, 29, 181],
     [3, 29, 191],
     [3, 29, 193],
     [3, 29, 197],
     [3, 29, 199],
     [3, 29, 211],
     [3, 29, 223],
     [3, 29, 227],
     [3, 29, 229]]

theorem k4PrefixGroup0034_passes :
    k4PrefixGroup0034.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
