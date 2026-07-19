import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0038 : List (List ℕ) :=
  [[3, 31, 191],
     [3, 31, 193],
     [3, 31, 197],
     [3, 31, 199],
     [3, 31, 211],
     [3, 31, 223],
     [3, 31, 227],
     [3, 31, 229],
     [3, 31, 233],
     [3, 31, 239],
     [3, 31, 241],
     [3, 31, 251],
     [3, 31, 257],
     [3, 31, 263],
     [3, 31, 269],
     [3, 31, 271]]

theorem k4PrefixGroup0038_passes :
    k4PrefixGroup0038.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
