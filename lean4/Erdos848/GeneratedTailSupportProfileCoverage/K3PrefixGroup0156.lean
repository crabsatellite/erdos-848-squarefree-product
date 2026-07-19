import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0156 : List (List ℕ) :=
  [[167, 173],
     [167, 179],
     [167, 181],
     [167, 191],
     [167, 193],
     [167, 197],
     [167, 199],
     [167, 211],
     [167, 223],
     [167, 227],
     [167, 229],
     [167, 233],
     [167, 239],
     [173, 179],
     [173, 181],
     [173, 191]]

theorem k3PrefixGroup0156_passes :
    k3PrefixGroup0156.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
