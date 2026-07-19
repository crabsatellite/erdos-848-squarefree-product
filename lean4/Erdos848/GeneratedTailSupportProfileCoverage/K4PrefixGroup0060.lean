import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0060 : List (List ℕ) :=
  [[3, 71, 151],
     [3, 71, 157],
     [3, 71, 163],
     [3, 71, 167],
     [3, 71, 173],
     [3, 71, 179],
     [3, 71, 181],
     [3, 71, 191],
     [3, 71, 193],
     [3, 71, 197],
     [3, 71, 199],
     [3, 73, 79],
     [3, 73, 83],
     [3, 73, 89],
     [3, 73, 97],
     [3, 73, 101]]

theorem k4PrefixGroup0060_passes :
    k4PrefixGroup0060.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
