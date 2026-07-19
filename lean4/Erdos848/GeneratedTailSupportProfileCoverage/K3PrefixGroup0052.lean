import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0052 : List (List ℕ) :=
  [[17, 359],
     [17, 367],
     [17, 373],
     [17, 379],
     [17, 383],
     [17, 389],
     [17, 397],
     [17, 401],
     [17, 409],
     [17, 419],
     [17, 421],
     [17, 431],
     [17, 433],
     [17, 439],
     [17, 443],
     [17, 449]]

theorem k3PrefixGroup0052_passes :
    k3PrefixGroup0052.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
