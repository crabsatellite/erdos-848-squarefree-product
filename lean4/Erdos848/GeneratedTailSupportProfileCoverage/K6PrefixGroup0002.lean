import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0002 : List (List ℕ) :=
  [[3, 7, 13, 17, 31],
     [3, 7, 13, 17, 37],
     [3, 7, 13, 17, 41],
     [3, 7, 13, 17, 43],
     [3, 7, 13, 19, 23],
     [3, 7, 13, 19, 29],
     [3, 7, 13, 19, 31],
     [3, 7, 13, 19, 37],
     [3, 7, 13, 19, 41],
     [3, 7, 13, 23, 29],
     [3, 7, 13, 23, 31],
     [3, 7, 13, 23, 37],
     [3, 7, 13, 29, 31],
     [3, 7, 17, 19, 23],
     [3, 7, 17, 19, 29],
     [3, 7, 17, 19, 31]]

theorem k6PrefixGroup0002_passes :
    k6PrefixGroup0002.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 30) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
