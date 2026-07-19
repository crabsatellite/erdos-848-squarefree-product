import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0016 : List (List ℕ) :=
  [[3, 13, 223],
     [3, 13, 227],
     [3, 13, 229],
     [3, 13, 233],
     [3, 13, 239],
     [3, 13, 241],
     [3, 13, 251],
     [3, 13, 257],
     [3, 13, 263],
     [3, 13, 269],
     [3, 13, 271],
     [3, 13, 277],
     [3, 13, 281],
     [3, 13, 283],
     [3, 13, 293],
     [3, 13, 307]]

theorem k4PrefixGroup0016_passes :
    k4PrefixGroup0016.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
