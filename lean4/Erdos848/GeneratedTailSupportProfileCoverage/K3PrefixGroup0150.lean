import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0150 : List (List ℕ) :=
  [[137, 239],
     [137, 241],
     [137, 251],
     [137, 257],
     [137, 263],
     [137, 269],
     [139, 149],
     [139, 151],
     [139, 157],
     [139, 163],
     [139, 167],
     [139, 173],
     [139, 179],
     [139, 181],
     [139, 191],
     [139, 193]]

theorem k3PrefixGroup0150_passes :
    k3PrefixGroup0150.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
