import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0091 : List (List ℕ) :=
  [[41, 353],
     [41, 359],
     [41, 367],
     [41, 373],
     [41, 379],
     [41, 383],
     [41, 389],
     [41, 397],
     [41, 401],
     [41, 409],
     [41, 419],
     [41, 421],
     [41, 431],
     [41, 433],
     [41, 439],
     [41, 443]]

theorem k3PrefixGroup0091_passes :
    k3PrefixGroup0091.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
