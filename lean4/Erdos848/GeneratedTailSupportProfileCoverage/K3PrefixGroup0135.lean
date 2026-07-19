import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0135 : List (List ℕ) :=
  [[101, 127],
     [101, 131],
     [101, 137],
     [101, 139],
     [101, 149],
     [101, 151],
     [101, 157],
     [101, 163],
     [101, 167],
     [101, 173],
     [101, 179],
     [101, 181],
     [101, 191],
     [101, 193],
     [101, 197],
     [101, 199]]

theorem k3PrefixGroup0135_passes :
    k3PrefixGroup0135.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
