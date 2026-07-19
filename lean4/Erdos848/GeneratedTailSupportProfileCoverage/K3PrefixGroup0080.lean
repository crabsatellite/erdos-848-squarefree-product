import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0080 : List (List ℕ) :=
  [[31, 349],
     [31, 353],
     [31, 359],
     [31, 367],
     [31, 373],
     [31, 379],
     [31, 383],
     [31, 389],
     [31, 397],
     [31, 401],
     [31, 409],
     [31, 419],
     [31, 421],
     [31, 431],
     [31, 433],
     [31, 439]]

theorem k3PrefixGroup0080_passes :
    k3PrefixGroup0080.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
