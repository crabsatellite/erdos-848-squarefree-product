import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0158 : List (List ℕ) :=
  [[17, 37, 79],
     [17, 37, 83],
     [17, 37, 89],
     [17, 37, 97],
     [17, 37, 101],
     [17, 37, 103],
     [17, 37, 107],
     [17, 37, 109],
     [17, 37, 113],
     [17, 41, 43],
     [17, 41, 47],
     [17, 41, 53],
     [17, 41, 59],
     [17, 41, 61],
     [17, 41, 67],
     [17, 41, 71]]

theorem k4PrefixGroup0158_passes :
    k4PrefixGroup0158.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
