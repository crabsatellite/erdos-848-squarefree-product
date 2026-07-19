import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0004 : List (List ℕ) :=
  [[3, 337],
     [3, 347],
     [3, 349],
     [3, 353],
     [3, 359],
     [3, 367],
     [3, 373],
     [3, 379],
     [3, 383],
     [3, 389],
     [3, 397],
     [3, 401],
     [3, 409],
     [3, 419],
     [3, 421],
     [3, 431]]

theorem k3PrefixGroup0004_passes :
    k3PrefixGroup0004.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
