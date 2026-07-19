import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0125 : List (List ℕ) :=
  [[79, 191],
     [79, 193],
     [79, 197],
     [79, 199],
     [79, 211],
     [79, 223],
     [79, 227],
     [79, 229],
     [79, 233],
     [79, 239],
     [79, 241],
     [79, 251],
     [79, 257],
     [79, 263],
     [79, 269],
     [79, 271]]

theorem k3PrefixGroup0125_passes :
    k3PrefixGroup0125.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
