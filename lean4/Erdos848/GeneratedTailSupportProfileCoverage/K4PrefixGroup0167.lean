import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0167 : List (List ℕ) :=
  [[19, 31, 61],
     [19, 31, 67],
     [19, 31, 71],
     [19, 31, 73],
     [19, 31, 79],
     [19, 31, 83],
     [19, 31, 89],
     [19, 31, 97],
     [19, 31, 101],
     [19, 31, 103],
     [19, 31, 107],
     [19, 31, 109],
     [19, 31, 113],
     [19, 31, 127],
     [19, 37, 41],
     [19, 37, 43]]

theorem k4PrefixGroup0167_passes :
    k4PrefixGroup0167.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
