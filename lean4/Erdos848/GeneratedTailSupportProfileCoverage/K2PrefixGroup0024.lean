import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0024 : List (List ℕ) :=
  [[2671],
     [2677],
     [2683],
     [2687],
     [2689],
     [2693],
     [2699],
     [2707],
     [2711],
     [2713],
     [2719],
     [2729],
     [2731],
     [2741],
     [2749],
     [2753]]

theorem k2PrefixGroup0024_passes :
    k2PrefixGroup0024.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
