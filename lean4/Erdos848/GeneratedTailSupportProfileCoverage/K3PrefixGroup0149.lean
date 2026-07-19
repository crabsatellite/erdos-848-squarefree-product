import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0149 : List (List ℕ) :=
  [[137, 151],
     [137, 157],
     [137, 163],
     [137, 167],
     [137, 173],
     [137, 179],
     [137, 181],
     [137, 191],
     [137, 193],
     [137, 197],
     [137, 199],
     [137, 211],
     [137, 223],
     [137, 227],
     [137, 229],
     [137, 233]]

theorem k3PrefixGroup0149_passes :
    k3PrefixGroup0149.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
