import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0146 : List (List ℕ) :=
  [[13, 43, 97],
     [13, 43, 101],
     [13, 43, 103],
     [13, 43, 107],
     [13, 43, 109],
     [13, 43, 113],
     [13, 43, 127],
     [13, 47, 53],
     [13, 47, 59],
     [13, 47, 61],
     [13, 47, 67],
     [13, 47, 71],
     [13, 47, 73],
     [13, 47, 79],
     [13, 47, 83],
     [13, 47, 89]]

theorem k4PrefixGroup0146_passes :
    k4PrefixGroup0146.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
