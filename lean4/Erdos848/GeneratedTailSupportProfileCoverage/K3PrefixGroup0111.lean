import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0111 : List (List ℕ) :=
  [[61, 157],
     [61, 163],
     [61, 167],
     [61, 173],
     [61, 179],
     [61, 181],
     [61, 191],
     [61, 193],
     [61, 197],
     [61, 199],
     [61, 211],
     [61, 223],
     [61, 227],
     [61, 229],
     [61, 233],
     [61, 239]]

theorem k3PrefixGroup0111_passes :
    k3PrefixGroup0111.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
