import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0157 : List (List ℕ) :=
  [[173, 193],
     [173, 197],
     [173, 199],
     [173, 211],
     [173, 223],
     [173, 227],
     [173, 229],
     [173, 233],
     [173, 239],
     [179, 181],
     [179, 191],
     [179, 193],
     [179, 197],
     [179, 199],
     [179, 211],
     [179, 223]]

theorem k3PrefixGroup0157_passes :
    k3PrefixGroup0157.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
