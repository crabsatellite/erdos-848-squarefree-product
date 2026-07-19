import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0086 : List (List ℕ) :=
  [[37, 379],
     [37, 383],
     [37, 389],
     [37, 397],
     [37, 401],
     [37, 409],
     [37, 419],
     [37, 421],
     [37, 431],
     [37, 433],
     [37, 439],
     [37, 443],
     [37, 449],
     [37, 457],
     [37, 461],
     [37, 463]]

theorem k3PrefixGroup0086_passes :
    k3PrefixGroup0086.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
