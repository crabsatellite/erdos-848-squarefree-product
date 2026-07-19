import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0070 : List (List ℕ) :=
  [[23, 619],
     [23, 631],
     [23, 641],
     [23, 643],
     [23, 647],
     [23, 653],
     [29, 31],
     [29, 37],
     [29, 41],
     [29, 43],
     [29, 47],
     [29, 53],
     [29, 59],
     [29, 61],
     [29, 67],
     [29, 71]]

theorem k3PrefixGroup0070_passes :
    k3PrefixGroup0070.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
