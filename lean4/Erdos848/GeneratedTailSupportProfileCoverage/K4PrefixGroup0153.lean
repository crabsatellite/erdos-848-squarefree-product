import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0153 : List (List ℕ) :=
  [[17, 23, 29],
     [17, 23, 31],
     [17, 23, 37],
     [17, 23, 41],
     [17, 23, 43],
     [17, 23, 47],
     [17, 23, 53],
     [17, 23, 59],
     [17, 23, 61],
     [17, 23, 67],
     [17, 23, 71],
     [17, 23, 73],
     [17, 23, 79],
     [17, 23, 83],
     [17, 23, 89],
     [17, 23, 97]]

theorem k4PrefixGroup0153_passes :
    k4PrefixGroup0153.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
