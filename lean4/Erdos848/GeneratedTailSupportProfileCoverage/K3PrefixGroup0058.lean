import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0058 : List (List ℕ) :=
  [[19, 179],
     [19, 181],
     [19, 191],
     [19, 193],
     [19, 197],
     [19, 199],
     [19, 211],
     [19, 223],
     [19, 227],
     [19, 229],
     [19, 233],
     [19, 239],
     [19, 241],
     [19, 251],
     [19, 257],
     [19, 263]]

theorem k3PrefixGroup0058_passes :
    k3PrefixGroup0058.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
