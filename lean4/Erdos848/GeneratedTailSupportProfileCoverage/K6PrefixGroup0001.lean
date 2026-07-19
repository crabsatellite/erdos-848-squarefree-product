import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0001 : List (List ℕ) :=
  [[3, 7, 11, 17, 43],
     [3, 7, 11, 17, 47],
     [3, 7, 11, 19, 23],
     [3, 7, 11, 19, 29],
     [3, 7, 11, 19, 31],
     [3, 7, 11, 19, 37],
     [3, 7, 11, 19, 41],
     [3, 7, 11, 19, 43],
     [3, 7, 11, 23, 29],
     [3, 7, 11, 23, 31],
     [3, 7, 11, 23, 37],
     [3, 7, 11, 23, 41],
     [3, 7, 11, 29, 31],
     [3, 7, 13, 17, 19],
     [3, 7, 13, 17, 23],
     [3, 7, 13, 17, 29]]

theorem k6PrefixGroup0001_passes :
    k6PrefixGroup0001.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 30) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
