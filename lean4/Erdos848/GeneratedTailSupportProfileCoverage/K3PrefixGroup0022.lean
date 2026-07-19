import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0022 : List (List ℕ) :=
  [[7, 409],
     [7, 419],
     [7, 421],
     [7, 431],
     [7, 433],
     [7, 439],
     [7, 443],
     [7, 449],
     [7, 457],
     [7, 461],
     [7, 463],
     [7, 467],
     [7, 479],
     [7, 487],
     [7, 491],
     [7, 499]]

theorem k3PrefixGroup0022_passes :
    k3PrefixGroup0022.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
