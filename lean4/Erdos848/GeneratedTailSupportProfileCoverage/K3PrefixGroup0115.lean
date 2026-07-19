import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0115 : List (List ℕ) :=
  [[67, 181],
     [67, 191],
     [67, 193],
     [67, 197],
     [67, 199],
     [67, 211],
     [67, 223],
     [67, 227],
     [67, 229],
     [67, 233],
     [67, 239],
     [67, 241],
     [67, 251],
     [67, 257],
     [67, 263],
     [67, 269]]

theorem k3PrefixGroup0115_passes :
    k3PrefixGroup0115.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
