import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0042 : List (List ℕ) :=
  [[3, 37, 241],
     [3, 37, 251],
     [3, 37, 257],
     [3, 37, 263],
     [3, 37, 269],
     [3, 37, 271],
     [3, 37, 277],
     [3, 37, 281],
     [3, 37, 283],
     [3, 37, 293],
     [3, 41, 43],
     [3, 41, 47],
     [3, 41, 53],
     [3, 41, 59],
     [3, 41, 61],
     [3, 41, 67]]

theorem k4PrefixGroup0042_passes :
    k4PrefixGroup0042.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
