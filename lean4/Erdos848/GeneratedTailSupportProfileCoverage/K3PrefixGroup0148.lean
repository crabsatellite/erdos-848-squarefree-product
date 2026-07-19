import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0148 : List (List ℕ) :=
  [[131, 197],
     [131, 199],
     [131, 211],
     [131, 223],
     [131, 227],
     [131, 229],
     [131, 233],
     [131, 239],
     [131, 241],
     [131, 251],
     [131, 257],
     [131, 263],
     [131, 269],
     [131, 271],
     [137, 139],
     [137, 149]]

theorem k3PrefixGroup0148_passes :
    k3PrefixGroup0148.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
