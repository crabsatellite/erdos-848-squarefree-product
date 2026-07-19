import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0035 : List (List ℕ) :=
  [[11, 521],
     [11, 523],
     [11, 541],
     [11, 547],
     [11, 557],
     [11, 563],
     [11, 569],
     [11, 571],
     [11, 577],
     [11, 587],
     [11, 593],
     [11, 599],
     [11, 601],
     [11, 607],
     [11, 613],
     [11, 617]]

theorem k3PrefixGroup0035_passes :
    k3PrefixGroup0035.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
