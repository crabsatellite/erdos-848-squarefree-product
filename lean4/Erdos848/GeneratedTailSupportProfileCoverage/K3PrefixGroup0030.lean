import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0030 : List (List ℕ) :=
  [[11, 61],
     [11, 67],
     [11, 71],
     [11, 73],
     [11, 79],
     [11, 83],
     [11, 89],
     [11, 97],
     [11, 101],
     [11, 103],
     [11, 107],
     [11, 109],
     [11, 113],
     [11, 127],
     [11, 131],
     [11, 137]]

theorem k3PrefixGroup0030_passes :
    k3PrefixGroup0030.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
