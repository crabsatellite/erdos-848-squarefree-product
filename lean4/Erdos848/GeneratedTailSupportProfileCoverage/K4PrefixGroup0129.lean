import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0129 : List (List ℕ) :=
  [[11, 59, 61],
     [11, 59, 67],
     [11, 59, 71],
     [11, 59, 73],
     [11, 59, 79],
     [11, 59, 83],
     [11, 59, 89],
     [11, 59, 97],
     [11, 59, 101],
     [11, 59, 103],
     [11, 59, 107],
     [11, 59, 109],
     [11, 59, 113],
     [11, 61, 67],
     [11, 61, 71],
     [11, 61, 73]]

theorem k4PrefixGroup0129_passes :
    k4PrefixGroup0129.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
