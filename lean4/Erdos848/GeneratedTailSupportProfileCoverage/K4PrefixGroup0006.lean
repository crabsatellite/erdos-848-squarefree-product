import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0006 : List (List ℕ) :=
  [[3, 7, 547],
     [3, 7, 557],
     [3, 7, 563],
     [3, 7, 569],
     [3, 7, 571],
     [3, 7, 577],
     [3, 7, 587],
     [3, 7, 593],
     [3, 7, 599],
     [3, 7, 601],
     [3, 7, 607],
     [3, 7, 613],
     [3, 7, 617],
     [3, 7, 619],
     [3, 7, 631],
     [3, 7, 641]]

theorem k4PrefixGroup0006_passes :
    k4PrefixGroup0006.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
