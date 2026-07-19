import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0142 : List (List ℕ) :=
  [[109, 163],
     [109, 167],
     [109, 173],
     [109, 179],
     [109, 181],
     [109, 191],
     [109, 193],
     [109, 197],
     [109, 199],
     [109, 211],
     [109, 223],
     [109, 227],
     [109, 229],
     [109, 233],
     [109, 239],
     [109, 241]]

theorem k3PrefixGroup0142_passes :
    k3PrefixGroup0142.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
