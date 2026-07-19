import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0000 : List (List ℕ) :=
  [[3],
     [7],
     [11],
     [13],
     [17],
     [19],
     [23],
     [29],
     [31],
     [37],
     [41],
     [43],
     [47],
     [53],
     [59],
     [61]]

theorem k2PrefixGroup0000_passes :
    k2PrefixGroup0000.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
