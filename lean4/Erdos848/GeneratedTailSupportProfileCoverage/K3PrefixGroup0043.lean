import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0043 : List (List ℕ) :=
  [[13, 353],
     [13, 359],
     [13, 367],
     [13, 373],
     [13, 379],
     [13, 383],
     [13, 389],
     [13, 397],
     [13, 401],
     [13, 409],
     [13, 419],
     [13, 421],
     [13, 431],
     [13, 433],
     [13, 439],
     [13, 443]]

theorem k3PrefixGroup0043_passes :
    k3PrefixGroup0043.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
