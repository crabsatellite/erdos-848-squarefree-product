import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0045 : List (List ℕ) :=
  [[13, 563],
     [13, 569],
     [13, 571],
     [13, 577],
     [13, 587],
     [13, 593],
     [13, 599],
     [13, 601],
     [13, 607],
     [13, 613],
     [13, 617],
     [13, 619],
     [13, 631],
     [13, 641],
     [13, 643],
     [13, 647]]

theorem k3PrefixGroup0045_passes :
    k3PrefixGroup0045.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
