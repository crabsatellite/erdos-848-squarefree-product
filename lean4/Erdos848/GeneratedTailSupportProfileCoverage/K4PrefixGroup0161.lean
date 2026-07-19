import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0161 : List (List ℕ) :=
  [[17, 47, 89],
     [17, 47, 97],
     [17, 47, 101],
     [17, 47, 103],
     [17, 47, 107],
     [17, 47, 109],
     [17, 53, 59],
     [17, 53, 61],
     [17, 53, 67],
     [17, 53, 71],
     [17, 53, 73],
     [17, 53, 79],
     [17, 53, 83],
     [17, 53, 89],
     [17, 53, 97],
     [17, 53, 101]]

theorem k4PrefixGroup0161_passes :
    k4PrefixGroup0161.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
