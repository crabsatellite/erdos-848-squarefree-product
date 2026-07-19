import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0005 : List (List ℕ) :=
  [[431],
     [433],
     [439],
     [443],
     [449],
     [457],
     [461],
     [463],
     [467],
     [479],
     [487],
     [491],
     [499],
     [503],
     [509],
     [521]]

theorem k2PrefixGroup0005_passes :
    k2PrefixGroup0005.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
