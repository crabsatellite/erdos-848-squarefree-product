import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0123 : List (List ℕ) :=
  [[11, 37, 47],
     [11, 37, 53],
     [11, 37, 59],
     [11, 37, 61],
     [11, 37, 67],
     [11, 37, 71],
     [11, 37, 73],
     [11, 37, 79],
     [11, 37, 83],
     [11, 37, 89],
     [11, 37, 97],
     [11, 37, 101],
     [11, 37, 103],
     [11, 37, 107],
     [11, 37, 109],
     [11, 37, 113]]

theorem k4PrefixGroup0123_passes :
    k4PrefixGroup0123.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
