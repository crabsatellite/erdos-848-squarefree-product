import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0150 : List (List ℕ) :=
  [[13, 67, 97],
     [13, 67, 101],
     [13, 67, 103],
     [13, 71, 73],
     [13, 71, 79],
     [13, 71, 83],
     [13, 71, 89],
     [13, 71, 97],
     [13, 71, 101],
     [13, 73, 79],
     [13, 73, 83],
     [13, 73, 89],
     [13, 73, 97],
     [13, 73, 101],
     [13, 79, 83],
     [13, 79, 89]]

theorem k4PrefixGroup0150_passes :
    k4PrefixGroup0150.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
