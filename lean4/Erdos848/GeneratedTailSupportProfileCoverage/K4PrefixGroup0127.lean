import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0127 : List (List ℕ) :=
  [[11, 47, 59],
     [11, 47, 61],
     [11, 47, 67],
     [11, 47, 71],
     [11, 47, 73],
     [11, 47, 79],
     [11, 47, 83],
     [11, 47, 89],
     [11, 47, 97],
     [11, 47, 101],
     [11, 47, 103],
     [11, 47, 107],
     [11, 47, 109],
     [11, 47, 113],
     [11, 47, 127],
     [11, 47, 131]]

theorem k4PrefixGroup0127_passes :
    k4PrefixGroup0127.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
