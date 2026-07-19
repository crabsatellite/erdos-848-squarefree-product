import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0047 : List (List ℕ) :=
  [[3, 43, 163],
     [3, 43, 167],
     [3, 43, 173],
     [3, 43, 179],
     [3, 43, 181],
     [3, 43, 191],
     [3, 43, 193],
     [3, 43, 197],
     [3, 43, 199],
     [3, 43, 211],
     [3, 43, 223],
     [3, 43, 227],
     [3, 43, 229],
     [3, 43, 233],
     [3, 43, 239],
     [3, 43, 241]]

theorem k4PrefixGroup0047_passes :
    k4PrefixGroup0047.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
