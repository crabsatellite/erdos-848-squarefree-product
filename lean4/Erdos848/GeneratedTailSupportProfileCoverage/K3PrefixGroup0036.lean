import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0036 : List (List ℕ) :=
  [[11, 619],
     [11, 631],
     [11, 641],
     [11, 643],
     [11, 647],
     [11, 653],
     [11, 659],
     [11, 661],
     [11, 673],
     [11, 677],
     [11, 683],
     [11, 691],
     [11, 701],
     [11, 709],
     [11, 719],
     [11, 727]]

theorem k3PrefixGroup0036_passes :
    k3PrefixGroup0036.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
