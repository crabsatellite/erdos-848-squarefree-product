import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0187 : List (List ℕ) :=
  [[31, 61, 71],
     [37, 41, 43],
     [37, 41, 47],
     [37, 41, 53],
     [37, 41, 59],
     [37, 41, 61],
     [37, 41, 67],
     [37, 41, 71],
     [37, 41, 73],
     [37, 41, 79],
     [37, 43, 47],
     [37, 43, 53],
     [37, 43, 59],
     [37, 43, 61],
     [37, 43, 67],
     [37, 43, 71]]

theorem k4PrefixGroup0187_passes :
    k4PrefixGroup0187.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
