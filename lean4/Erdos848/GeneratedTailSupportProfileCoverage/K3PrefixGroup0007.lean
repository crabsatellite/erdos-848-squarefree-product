import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0007 : List (List ℕ) :=
  [[3, 641],
     [3, 643],
     [3, 647],
     [3, 653],
     [3, 659],
     [3, 661],
     [3, 673],
     [3, 677],
     [3, 683],
     [3, 691],
     [3, 701],
     [3, 709],
     [3, 719],
     [3, 727],
     [3, 733],
     [3, 739]]

theorem k3PrefixGroup0007_passes :
    k3PrefixGroup0007.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
