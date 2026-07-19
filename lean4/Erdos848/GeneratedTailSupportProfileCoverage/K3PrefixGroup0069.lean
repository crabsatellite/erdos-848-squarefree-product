import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0069 : List (List ℕ) :=
  [[23, 521],
     [23, 523],
     [23, 541],
     [23, 547],
     [23, 557],
     [23, 563],
     [23, 569],
     [23, 571],
     [23, 577],
     [23, 587],
     [23, 593],
     [23, 599],
     [23, 601],
     [23, 607],
     [23, 613],
     [23, 617]]

theorem k3PrefixGroup0069_passes :
    k3PrefixGroup0069.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
