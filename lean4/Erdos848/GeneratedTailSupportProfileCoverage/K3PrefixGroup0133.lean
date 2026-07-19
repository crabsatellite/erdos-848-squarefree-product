import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0133 : List (List ℕ) :=
  [[97, 163],
     [97, 167],
     [97, 173],
     [97, 179],
     [97, 181],
     [97, 191],
     [97, 193],
     [97, 197],
     [97, 199],
     [97, 211],
     [97, 223],
     [97, 227],
     [97, 229],
     [97, 233],
     [97, 239],
     [97, 241]]

theorem k3PrefixGroup0133_passes :
    k3PrefixGroup0133.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
