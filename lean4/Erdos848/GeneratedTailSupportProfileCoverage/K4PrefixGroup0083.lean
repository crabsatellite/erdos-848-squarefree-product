import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0083 : List (List ℕ) :=
  [[7, 17, 277],
     [7, 17, 281],
     [7, 17, 283],
     [7, 19, 23],
     [7, 19, 29],
     [7, 19, 31],
     [7, 19, 37],
     [7, 19, 41],
     [7, 19, 43],
     [7, 19, 47],
     [7, 19, 53],
     [7, 19, 59],
     [7, 19, 61],
     [7, 19, 67],
     [7, 19, 71],
     [7, 19, 73]]

theorem k4PrefixGroup0083_passes :
    k4PrefixGroup0083.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
