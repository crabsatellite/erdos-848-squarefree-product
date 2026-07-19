import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0062 : List (List ℕ) :=
  [[19, 571],
     [19, 577],
     [19, 587],
     [19, 593],
     [19, 599],
     [19, 601],
     [19, 607],
     [19, 613],
     [19, 617],
     [19, 619],
     [19, 631],
     [19, 641],
     [19, 643],
     [19, 647],
     [19, 653],
     [19, 659]]

theorem k3PrefixGroup0062_passes :
    k3PrefixGroup0062.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
