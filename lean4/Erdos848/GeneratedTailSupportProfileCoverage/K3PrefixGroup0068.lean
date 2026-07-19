import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0068 : List (List ℕ) :=
  [[23, 421],
     [23, 431],
     [23, 433],
     [23, 439],
     [23, 443],
     [23, 449],
     [23, 457],
     [23, 461],
     [23, 463],
     [23, 467],
     [23, 479],
     [23, 487],
     [23, 491],
     [23, 499],
     [23, 503],
     [23, 509]]

theorem k3PrefixGroup0068_passes :
    k3PrefixGroup0068.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
