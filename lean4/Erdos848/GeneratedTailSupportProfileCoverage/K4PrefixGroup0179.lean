import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0179 : List (List ℕ) :=
  [[23, 53, 71],
     [23, 53, 73],
     [23, 53, 79],
     [23, 53, 83],
     [23, 59, 61],
     [23, 59, 67],
     [23, 59, 71],
     [23, 59, 73],
     [23, 59, 79],
     [23, 61, 67],
     [23, 61, 71],
     [23, 61, 73],
     [23, 61, 79],
     [23, 67, 71],
     [23, 67, 73],
     [23, 71, 73]]

theorem k4PrefixGroup0179_passes :
    k4PrefixGroup0179.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
