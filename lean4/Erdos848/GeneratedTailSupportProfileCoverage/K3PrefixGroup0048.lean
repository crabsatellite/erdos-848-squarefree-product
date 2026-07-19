import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0048 : List (List ℕ) :=
  [[17, 19],
     [17, 23],
     [17, 29],
     [17, 31],
     [17, 37],
     [17, 41],
     [17, 43],
     [17, 47],
     [17, 53],
     [17, 59],
     [17, 61],
     [17, 67],
     [17, 71],
     [17, 73],
     [17, 79],
     [17, 83]]

theorem k3PrefixGroup0048_passes :
    k3PrefixGroup0048.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
