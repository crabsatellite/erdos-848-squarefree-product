import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0146 : List (List ℕ) :=
  [[127, 173],
     [127, 179],
     [127, 181],
     [127, 191],
     [127, 193],
     [127, 197],
     [127, 199],
     [127, 211],
     [127, 223],
     [127, 227],
     [127, 229],
     [127, 233],
     [127, 239],
     [127, 241],
     [127, 251],
     [127, 257]]

theorem k3PrefixGroup0146_passes :
    k3PrefixGroup0146.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
