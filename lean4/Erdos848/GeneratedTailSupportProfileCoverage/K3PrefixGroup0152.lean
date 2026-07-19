import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0152 : List (List ℕ) :=
  [[149, 173],
     [149, 179],
     [149, 181],
     [149, 191],
     [149, 193],
     [149, 197],
     [149, 199],
     [149, 211],
     [149, 223],
     [149, 227],
     [149, 229],
     [149, 233],
     [149, 239],
     [149, 241],
     [149, 251],
     [151, 157]]

theorem k3PrefixGroup0152_passes :
    k3PrefixGroup0152.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
