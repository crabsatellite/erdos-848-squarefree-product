import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0168 : List (List ℕ) :=
  [[19, 37, 47],
     [19, 37, 53],
     [19, 37, 59],
     [19, 37, 61],
     [19, 37, 67],
     [19, 37, 71],
     [19, 37, 73],
     [19, 37, 79],
     [19, 37, 83],
     [19, 37, 89],
     [19, 37, 97],
     [19, 37, 101],
     [19, 37, 103],
     [19, 37, 107],
     [19, 37, 109],
     [19, 41, 43]]

theorem k4PrefixGroup0168_passes :
    k4PrefixGroup0168.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
