import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0113 : List (List ℕ) :=
  [[61, 347],
     [61, 349],
     [61, 353],
     [61, 359],
     [61, 367],
     [61, 373],
     [61, 379],
     [61, 383],
     [61, 389],
     [61, 397],
     [67, 71],
     [67, 73],
     [67, 79],
     [67, 83],
     [67, 89],
     [67, 97]]

theorem k3PrefixGroup0113_passes :
    k3PrefixGroup0113.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
