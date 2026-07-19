import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0097 : List (List ℕ) :=
  [[43, 457],
     [43, 461],
     [43, 463],
     [43, 467],
     [47, 53],
     [47, 59],
     [47, 61],
     [47, 67],
     [47, 71],
     [47, 73],
     [47, 79],
     [47, 83],
     [47, 89],
     [47, 97],
     [47, 101],
     [47, 103]]

theorem k3PrefixGroup0097_passes :
    k3PrefixGroup0097.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
