import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0128 : List (List ℕ) :=
  [[83, 193],
     [83, 197],
     [83, 199],
     [83, 211],
     [83, 223],
     [83, 227],
     [83, 229],
     [83, 233],
     [83, 239],
     [83, 241],
     [83, 251],
     [83, 257],
     [83, 263],
     [83, 269],
     [83, 271],
     [83, 277]]

theorem k3PrefixGroup0128_passes :
    k3PrefixGroup0128.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
