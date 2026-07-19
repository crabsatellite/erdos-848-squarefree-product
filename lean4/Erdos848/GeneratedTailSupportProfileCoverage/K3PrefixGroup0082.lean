import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0082 : List (List ℕ) :=
  [[31, 557],
     [31, 563],
     [37, 41],
     [37, 43],
     [37, 47],
     [37, 53],
     [37, 59],
     [37, 61],
     [37, 67],
     [37, 71],
     [37, 73],
     [37, 79],
     [37, 83],
     [37, 89],
     [37, 97],
     [37, 101]]

theorem k3PrefixGroup0082_passes :
    k3PrefixGroup0082.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
