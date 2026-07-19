import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0064 : List (List ℕ) :=
  [[23, 61],
     [23, 67],
     [23, 71],
     [23, 73],
     [23, 79],
     [23, 83],
     [23, 89],
     [23, 97],
     [23, 101],
     [23, 103],
     [23, 107],
     [23, 109],
     [23, 113],
     [23, 127],
     [23, 131],
     [23, 137]]

theorem k3PrefixGroup0064_passes :
    k3PrefixGroup0064.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
