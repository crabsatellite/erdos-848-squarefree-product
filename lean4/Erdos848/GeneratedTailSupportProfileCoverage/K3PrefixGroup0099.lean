import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0099 : List (List ℕ) :=
  [[47, 193],
     [47, 197],
     [47, 199],
     [47, 211],
     [47, 223],
     [47, 227],
     [47, 229],
     [47, 233],
     [47, 239],
     [47, 241],
     [47, 251],
     [47, 257],
     [47, 263],
     [47, 269],
     [47, 271],
     [47, 277]]

theorem k3PrefixGroup0099_passes :
    k3PrefixGroup0099.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
