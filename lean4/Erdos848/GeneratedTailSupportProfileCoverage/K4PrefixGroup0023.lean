import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0023 : List (List ℕ) :=
  [[3, 17, 353],
     [3, 17, 359],
     [3, 17, 367],
     [3, 17, 373],
     [3, 17, 379],
     [3, 17, 383],
     [3, 17, 389],
     [3, 17, 397],
     [3, 17, 401],
     [3, 17, 409],
     [3, 17, 419],
     [3, 17, 421],
     [3, 17, 431],
     [3, 17, 433],
     [3, 17, 439],
     [3, 19, 23]]

theorem k4PrefixGroup0023_passes :
    k4PrefixGroup0023.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
