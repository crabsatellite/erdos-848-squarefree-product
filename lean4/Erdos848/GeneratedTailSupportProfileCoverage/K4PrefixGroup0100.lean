import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0100 : List (List ℕ) :=
  [[7, 47, 127],
     [7, 47, 131],
     [7, 47, 137],
     [7, 47, 139],
     [7, 47, 149],
     [7, 47, 151],
     [7, 47, 157],
     [7, 47, 163],
     [7, 47, 167],
     [7, 53, 59],
     [7, 53, 61],
     [7, 53, 67],
     [7, 53, 71],
     [7, 53, 73],
     [7, 53, 79],
     [7, 53, 83]]

theorem k4PrefixGroup0100_passes :
    k4PrefixGroup0100.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
