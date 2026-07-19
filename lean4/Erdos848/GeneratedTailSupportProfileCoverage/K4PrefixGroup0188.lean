import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0188 : List (List ℕ) :=
  [[37, 43, 73],
     [37, 47, 53],
     [37, 47, 59],
     [37, 47, 61],
     [37, 47, 67],
     [37, 47, 71],
     [37, 53, 59],
     [37, 53, 61],
     [37, 53, 67],
     [37, 59, 61],
     [41, 43, 47],
     [41, 43, 53],
     [41, 43, 59],
     [41, 43, 61],
     [41, 43, 67],
     [41, 43, 71]]

theorem k4PrefixGroup0188_passes :
    k4PrefixGroup0188.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
