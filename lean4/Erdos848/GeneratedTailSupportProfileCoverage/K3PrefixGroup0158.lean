import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0158 : List (List ℕ) :=
  [[179, 227],
     [179, 229],
     [179, 233],
     [181, 191],
     [181, 193],
     [181, 197],
     [181, 199],
     [181, 211],
     [181, 223],
     [181, 227],
     [181, 229],
     [191, 193],
     [191, 197],
     [191, 199],
     [191, 211],
     [191, 223]]

theorem k3PrefixGroup0158_passes :
    k3PrefixGroup0158.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
