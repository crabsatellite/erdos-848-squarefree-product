import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0005 : List (List ℕ) :=
  [[3, 433],
     [3, 439],
     [3, 443],
     [3, 449],
     [3, 457],
     [3, 461],
     [3, 463],
     [3, 467],
     [3, 479],
     [3, 487],
     [3, 491],
     [3, 499],
     [3, 503],
     [3, 509],
     [3, 521],
     [3, 523]]

theorem k3PrefixGroup0005_passes :
    k3PrefixGroup0005.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
