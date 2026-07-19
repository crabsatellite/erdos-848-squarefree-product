import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0004 : List (List ℕ) :=
  [[3, 7, 347],
     [3, 7, 349],
     [3, 7, 353],
     [3, 7, 359],
     [3, 7, 367],
     [3, 7, 373],
     [3, 7, 379],
     [3, 7, 383],
     [3, 7, 389],
     [3, 7, 397],
     [3, 7, 401],
     [3, 7, 409],
     [3, 7, 419],
     [3, 7, 421],
     [3, 7, 431],
     [3, 7, 433]]

theorem k4PrefixGroup0004_passes :
    k4PrefixGroup0004.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
