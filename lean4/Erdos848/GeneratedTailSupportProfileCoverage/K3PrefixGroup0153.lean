import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0153 : List (List ℕ) :=
  [[151, 163],
     [151, 167],
     [151, 173],
     [151, 179],
     [151, 181],
     [151, 191],
     [151, 193],
     [151, 197],
     [151, 199],
     [151, 211],
     [151, 223],
     [151, 227],
     [151, 229],
     [151, 233],
     [151, 239],
     [151, 241]]

theorem k3PrefixGroup0153_passes :
    k3PrefixGroup0153.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
