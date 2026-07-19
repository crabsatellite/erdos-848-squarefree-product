import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0106 : List (List ℕ) :=
  [[59, 61],
     [59, 67],
     [59, 71],
     [59, 73],
     [59, 79],
     [59, 83],
     [59, 89],
     [59, 97],
     [59, 101],
     [59, 103],
     [59, 107],
     [59, 109],
     [59, 113],
     [59, 127],
     [59, 131],
     [59, 137]]

theorem k3PrefixGroup0106_passes :
    k3PrefixGroup0106.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
