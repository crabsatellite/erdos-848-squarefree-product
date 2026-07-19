import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0006 : List (List ℕ) :=
  [[523],
     [541],
     [547],
     [557],
     [563],
     [569],
     [571],
     [577],
     [587],
     [593],
     [599],
     [601],
     [607],
     [613],
     [617],
     [619]]

theorem k2PrefixGroup0006_passes :
    k2PrefixGroup0006.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
