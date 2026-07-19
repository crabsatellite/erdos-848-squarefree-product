import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0076 : List (List ℕ) :=
  [[29, 547],
     [29, 557],
     [29, 563],
     [29, 569],
     [29, 571],
     [29, 577],
     [31, 37],
     [31, 41],
     [31, 43],
     [31, 47],
     [31, 53],
     [31, 59],
     [31, 61],
     [31, 67],
     [31, 71],
     [31, 73]]

theorem k3PrefixGroup0076_passes :
    k3PrefixGroup0076.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
