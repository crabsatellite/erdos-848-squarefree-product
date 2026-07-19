import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0162 : List (List ℕ) :=
  [[17, 53, 103],
     [17, 59, 61],
     [17, 59, 67],
     [17, 59, 71],
     [17, 59, 73],
     [17, 59, 79],
     [17, 59, 83],
     [17, 59, 89],
     [17, 59, 97],
     [17, 61, 67],
     [17, 61, 71],
     [17, 61, 73],
     [17, 61, 79],
     [17, 61, 83],
     [17, 61, 89],
     [17, 67, 71]]

theorem k4PrefixGroup0162_passes :
    k4PrefixGroup0162.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
