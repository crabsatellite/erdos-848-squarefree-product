import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0109 : List (List ℕ) :=
  [[59, 317],
     [59, 331],
     [59, 337],
     [59, 347],
     [59, 349],
     [59, 353],
     [59, 359],
     [59, 367],
     [59, 373],
     [59, 379],
     [59, 383],
     [59, 389],
     [59, 397],
     [59, 401],
     [61, 67],
     [61, 71]]

theorem k3PrefixGroup0109_passes :
    k3PrefixGroup0109.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
