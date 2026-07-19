import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0177 : List (List ℕ) :=
  [[23, 41, 61],
     [23, 41, 67],
     [23, 41, 71],
     [23, 41, 73],
     [23, 41, 79],
     [23, 41, 83],
     [23, 41, 89],
     [23, 41, 97],
     [23, 41, 101],
     [23, 43, 47],
     [23, 43, 53],
     [23, 43, 59],
     [23, 43, 61],
     [23, 43, 67],
     [23, 43, 71],
     [23, 43, 73]]

theorem k4PrefixGroup0177_passes :
    k4PrefixGroup0177.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
