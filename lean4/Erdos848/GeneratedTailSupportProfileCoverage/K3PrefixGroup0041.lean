import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0041 : List (List ℕ) :=
  [[13, 167],
     [13, 173],
     [13, 179],
     [13, 181],
     [13, 191],
     [13, 193],
     [13, 197],
     [13, 199],
     [13, 211],
     [13, 223],
     [13, 227],
     [13, 229],
     [13, 233],
     [13, 239],
     [13, 241],
     [13, 251]]

theorem k3PrefixGroup0041_passes :
    k3PrefixGroup0041.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
