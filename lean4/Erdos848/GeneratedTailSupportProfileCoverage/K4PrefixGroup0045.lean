import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0045 : List (List ℕ) :=
  [[3, 41, 239],
     [3, 41, 241],
     [3, 41, 251],
     [3, 41, 257],
     [3, 41, 263],
     [3, 41, 269],
     [3, 41, 271],
     [3, 41, 277],
     [3, 41, 281],
     [3, 43, 47],
     [3, 43, 53],
     [3, 43, 59],
     [3, 43, 61],
     [3, 43, 67],
     [3, 43, 71],
     [3, 43, 73]]

theorem k4PrefixGroup0045_passes :
    k4PrefixGroup0045.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
