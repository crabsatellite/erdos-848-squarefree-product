import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0096 : List (List ℕ) :=
  [[43, 359],
     [43, 367],
     [43, 373],
     [43, 379],
     [43, 383],
     [43, 389],
     [43, 397],
     [43, 401],
     [43, 409],
     [43, 419],
     [43, 421],
     [43, 431],
     [43, 433],
     [43, 439],
     [43, 443],
     [43, 449]]

theorem k3PrefixGroup0096_passes :
    k3PrefixGroup0096.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
