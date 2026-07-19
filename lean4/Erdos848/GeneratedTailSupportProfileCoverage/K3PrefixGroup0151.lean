import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0151 : List (List ℕ) :=
  [[139, 197],
     [139, 199],
     [139, 211],
     [139, 223],
     [139, 227],
     [139, 229],
     [139, 233],
     [139, 239],
     [139, 241],
     [139, 251],
     [139, 257],
     [139, 263],
     [149, 151],
     [149, 157],
     [149, 163],
     [149, 167]]

theorem k3PrefixGroup0151_passes :
    k3PrefixGroup0151.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
