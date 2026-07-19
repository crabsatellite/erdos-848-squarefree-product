import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0103 : List (List ℕ) :=
  [[7, 59, 151],
     [7, 61, 67],
     [7, 61, 71],
     [7, 61, 73],
     [7, 61, 79],
     [7, 61, 83],
     [7, 61, 89],
     [7, 61, 97],
     [7, 61, 101],
     [7, 61, 103],
     [7, 61, 107],
     [7, 61, 109],
     [7, 61, 113],
     [7, 61, 127],
     [7, 61, 131],
     [7, 61, 137]]

theorem k4PrefixGroup0103_passes :
    k4PrefixGroup0103.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
