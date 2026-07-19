import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0050 : List (List ℕ) :=
  [[3, 47, 191],
     [3, 47, 193],
     [3, 47, 197],
     [3, 47, 199],
     [3, 47, 211],
     [3, 47, 223],
     [3, 47, 227],
     [3, 47, 229],
     [3, 47, 233],
     [3, 47, 239],
     [3, 47, 241],
     [3, 47, 251],
     [3, 47, 257],
     [3, 47, 263],
     [3, 53, 59],
     [3, 53, 61]]

theorem k4PrefixGroup0050_passes :
    k4PrefixGroup0050.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
