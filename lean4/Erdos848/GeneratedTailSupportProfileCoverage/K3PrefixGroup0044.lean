import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0044 : List (List ℕ) :=
  [[13, 449],
     [13, 457],
     [13, 461],
     [13, 463],
     [13, 467],
     [13, 479],
     [13, 487],
     [13, 491],
     [13, 499],
     [13, 503],
     [13, 509],
     [13, 521],
     [13, 523],
     [13, 541],
     [13, 547],
     [13, 557]]

theorem k3PrefixGroup0044_passes :
    k3PrefixGroup0044.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
