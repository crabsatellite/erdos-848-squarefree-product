import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0160 : List (List ℕ) :=
  [[17, 43, 79],
     [17, 43, 83],
     [17, 43, 89],
     [17, 43, 97],
     [17, 43, 101],
     [17, 43, 103],
     [17, 43, 107],
     [17, 43, 109],
     [17, 47, 53],
     [17, 47, 59],
     [17, 47, 61],
     [17, 47, 67],
     [17, 47, 71],
     [17, 47, 73],
     [17, 47, 79],
     [17, 47, 83]]

theorem k4PrefixGroup0160_passes :
    k4PrefixGroup0160.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
