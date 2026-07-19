import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0138 : List (List ℕ) :=
  [[103, 181],
     [103, 191],
     [103, 193],
     [103, 197],
     [103, 199],
     [103, 211],
     [103, 223],
     [103, 227],
     [103, 229],
     [103, 233],
     [103, 239],
     [103, 241],
     [103, 251],
     [103, 257],
     [103, 263],
     [103, 269]]

theorem k3PrefixGroup0138_passes :
    k3PrefixGroup0138.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
