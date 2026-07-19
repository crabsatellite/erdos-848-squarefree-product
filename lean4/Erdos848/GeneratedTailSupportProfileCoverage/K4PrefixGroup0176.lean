import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0176 : List (List ℕ) :=
  [[23, 37, 59],
     [23, 37, 61],
     [23, 37, 67],
     [23, 37, 71],
     [23, 37, 73],
     [23, 37, 79],
     [23, 37, 83],
     [23, 37, 89],
     [23, 37, 97],
     [23, 37, 101],
     [23, 37, 103],
     [23, 37, 107],
     [23, 41, 43],
     [23, 41, 47],
     [23, 41, 53],
     [23, 41, 59]]

theorem k4PrefixGroup0176_passes :
    k4PrefixGroup0176.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
