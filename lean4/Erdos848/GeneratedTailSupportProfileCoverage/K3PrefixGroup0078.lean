import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0078 : List (List ℕ) :=
  [[31, 163],
     [31, 167],
     [31, 173],
     [31, 179],
     [31, 181],
     [31, 191],
     [31, 193],
     [31, 197],
     [31, 199],
     [31, 211],
     [31, 223],
     [31, 227],
     [31, 229],
     [31, 233],
     [31, 239],
     [31, 241]]

theorem k3PrefixGroup0078_passes :
    k3PrefixGroup0078.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
