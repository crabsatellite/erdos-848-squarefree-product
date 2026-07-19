import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0136 : List (List ℕ) :=
  [[101, 211],
     [101, 223],
     [101, 227],
     [101, 229],
     [101, 233],
     [101, 239],
     [101, 241],
     [101, 251],
     [101, 257],
     [101, 263],
     [101, 269],
     [101, 271],
     [101, 277],
     [101, 281],
     [101, 283],
     [101, 293]]

theorem k3PrefixGroup0136_passes :
    k3PrefixGroup0136.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
