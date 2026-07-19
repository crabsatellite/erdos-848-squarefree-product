import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0155 : List (List ℕ) :=
  [[17, 29, 53],
     [17, 29, 59],
     [17, 29, 61],
     [17, 29, 67],
     [17, 29, 71],
     [17, 29, 73],
     [17, 29, 79],
     [17, 29, 83],
     [17, 29, 89],
     [17, 29, 97],
     [17, 29, 101],
     [17, 29, 103],
     [17, 29, 107],
     [17, 29, 109],
     [17, 29, 113],
     [17, 29, 127]]

theorem k4PrefixGroup0155_passes :
    k4PrefixGroup0155.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
