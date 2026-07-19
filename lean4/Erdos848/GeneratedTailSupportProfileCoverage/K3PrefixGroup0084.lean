import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0084 : List (List ℕ) :=
  [[37, 191],
     [37, 193],
     [37, 197],
     [37, 199],
     [37, 211],
     [37, 223],
     [37, 227],
     [37, 229],
     [37, 233],
     [37, 239],
     [37, 241],
     [37, 251],
     [37, 257],
     [37, 263],
     [37, 269],
     [37, 271]]

theorem k3PrefixGroup0084_passes :
    k3PrefixGroup0084.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
