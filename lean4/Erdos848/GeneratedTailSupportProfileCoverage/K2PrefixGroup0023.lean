import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0023 : List (List ℕ) :=
  [[2539],
     [2543],
     [2549],
     [2551],
     [2557],
     [2579],
     [2591],
     [2593],
     [2609],
     [2617],
     [2621],
     [2633],
     [2647],
     [2657],
     [2659],
     [2663]]

theorem k2PrefixGroup0023_passes :
    k2PrefixGroup0023.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
