import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0063 : List (List ℕ) :=
  [[3, 79, 149],
     [3, 79, 151],
     [3, 79, 157],
     [3, 79, 163],
     [3, 79, 167],
     [3, 79, 173],
     [3, 79, 179],
     [3, 79, 181],
     [3, 79, 191],
     [3, 79, 193],
     [3, 79, 197],
     [3, 79, 199],
     [3, 83, 89],
     [3, 83, 97],
     [3, 83, 101],
     [3, 83, 103]]

theorem k4PrefixGroup0063_passes :
    k4PrefixGroup0063.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
