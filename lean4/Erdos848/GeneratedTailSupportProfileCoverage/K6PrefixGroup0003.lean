import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0003 : List (List ℕ) :=
  [[3, 7, 17, 23, 29],
     [3, 7, 17, 23, 31],
     [3, 7, 19, 23, 29],
     [3, 11, 13, 17, 19],
     [3, 11, 13, 17, 23],
     [3, 11, 13, 17, 29],
     [3, 11, 13, 17, 31],
     [3, 11, 13, 19, 23],
     [3, 11, 13, 19, 29],
     [3, 11, 13, 19, 31],
     [3, 11, 13, 23, 29],
     [3, 11, 17, 19, 23],
     [3, 11, 17, 19, 29],
     [3, 13, 17, 19, 23],
     [7, 11, 13, 17, 19]]

theorem k6PrefixGroup0003_passes :
    k6PrefixGroup0003.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 30) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
