import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0159 : List (List ℕ) :=
  [[191, 227],
     [193, 197],
     [193, 199],
     [193, 211],
     [193, 223],
     [197, 199],
     [197, 211],
     [197, 223],
     [199, 211]]

theorem k3PrefixGroup0159_passes :
    k3PrefixGroup0159.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
