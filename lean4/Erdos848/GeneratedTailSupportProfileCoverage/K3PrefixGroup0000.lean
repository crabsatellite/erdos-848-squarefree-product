import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0000 : List (List ℕ) :=
  [[3, 7],
     [3, 11],
     [3, 13],
     [3, 17],
     [3, 19],
     [3, 23],
     [3, 29],
     [3, 31],
     [3, 37],
     [3, 41],
     [3, 43],
     [3, 47],
     [3, 53],
     [3, 59],
     [3, 61],
     [3, 67]]

theorem k3PrefixGroup0000_passes :
    k3PrefixGroup0000.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
