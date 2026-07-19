import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0072 : List (List ℕ) :=
  [[29, 157],
     [29, 163],
     [29, 167],
     [29, 173],
     [29, 179],
     [29, 181],
     [29, 191],
     [29, 193],
     [29, 197],
     [29, 199],
     [29, 211],
     [29, 223],
     [29, 227],
     [29, 229],
     [29, 233],
     [29, 239]]

theorem k3PrefixGroup0072_passes :
    k3PrefixGroup0072.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
