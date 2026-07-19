import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0144 : List (List ℕ) :=
  [[113, 163],
     [113, 167],
     [113, 173],
     [113, 179],
     [113, 181],
     [113, 191],
     [113, 193],
     [113, 197],
     [113, 199],
     [113, 211],
     [113, 223],
     [113, 227],
     [113, 229],
     [113, 233],
     [113, 239],
     [113, 241]]

theorem k3PrefixGroup0144_passes :
    k3PrefixGroup0144.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
