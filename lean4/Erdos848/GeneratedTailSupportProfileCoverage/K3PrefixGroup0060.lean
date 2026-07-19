import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0060 : List (List ℕ) :=
  [[19, 367],
     [19, 373],
     [19, 379],
     [19, 383],
     [19, 389],
     [19, 397],
     [19, 401],
     [19, 409],
     [19, 419],
     [19, 421],
     [19, 431],
     [19, 433],
     [19, 439],
     [19, 443],
     [19, 449],
     [19, 457]]

theorem k3PrefixGroup0060_passes :
    k3PrefixGroup0060.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
