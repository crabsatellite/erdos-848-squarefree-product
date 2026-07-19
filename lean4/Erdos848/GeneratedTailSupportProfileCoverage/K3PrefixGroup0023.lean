import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0023 : List (List ℕ) :=
  [[7, 503],
     [7, 509],
     [7, 521],
     [7, 523],
     [7, 541],
     [7, 547],
     [7, 557],
     [7, 563],
     [7, 569],
     [7, 571],
     [7, 577],
     [7, 587],
     [7, 593],
     [7, 599],
     [7, 601],
     [7, 607]]

theorem k3PrefixGroup0023_passes :
    k3PrefixGroup0023.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
