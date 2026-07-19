import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0140 : List (List ℕ) :=
  [[107, 167],
     [107, 173],
     [107, 179],
     [107, 181],
     [107, 191],
     [107, 193],
     [107, 197],
     [107, 199],
     [107, 211],
     [107, 223],
     [107, 227],
     [107, 229],
     [107, 233],
     [107, 239],
     [107, 241],
     [107, 251]]

theorem k3PrefixGroup0140_passes :
    k3PrefixGroup0140.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
