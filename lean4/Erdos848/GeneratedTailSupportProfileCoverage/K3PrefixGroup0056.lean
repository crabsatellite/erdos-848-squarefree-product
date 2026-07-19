import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0056 : List (List ℕ) :=
  [[19, 23],
     [19, 29],
     [19, 31],
     [19, 37],
     [19, 41],
     [19, 43],
     [19, 47],
     [19, 53],
     [19, 59],
     [19, 61],
     [19, 67],
     [19, 71],
     [19, 73],
     [19, 79],
     [19, 83],
     [19, 89]]

theorem k3PrefixGroup0056_passes :
    k3PrefixGroup0056.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
