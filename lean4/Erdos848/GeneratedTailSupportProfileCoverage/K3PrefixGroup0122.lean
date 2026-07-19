import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0122 : List (List ℕ) :=
  [[73, 199],
     [73, 211],
     [73, 223],
     [73, 227],
     [73, 229],
     [73, 233],
     [73, 239],
     [73, 241],
     [73, 251],
     [73, 257],
     [73, 263],
     [73, 269],
     [73, 271],
     [73, 277],
     [73, 281],
     [73, 283]]

theorem k3PrefixGroup0122_passes :
    k3PrefixGroup0122.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
