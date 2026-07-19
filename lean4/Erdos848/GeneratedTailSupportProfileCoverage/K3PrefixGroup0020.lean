import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0020 : List (List ℕ) :=
  [[7, 223],
     [7, 227],
     [7, 229],
     [7, 233],
     [7, 239],
     [7, 241],
     [7, 251],
     [7, 257],
     [7, 263],
     [7, 269],
     [7, 271],
     [7, 277],
     [7, 281],
     [7, 283],
     [7, 293],
     [7, 307]]

theorem k3PrefixGroup0020_passes :
    k3PrefixGroup0020.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
