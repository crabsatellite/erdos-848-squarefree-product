import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0103 : List (List ℕ) :=
  [[53, 151],
     [53, 157],
     [53, 163],
     [53, 167],
     [53, 173],
     [53, 179],
     [53, 181],
     [53, 191],
     [53, 193],
     [53, 197],
     [53, 199],
     [53, 211],
     [53, 223],
     [53, 227],
     [53, 229],
     [53, 233]]

theorem k3PrefixGroup0103_passes :
    k3PrefixGroup0103.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
