import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0137 : List (List ℕ) :=
  [[13, 19, 157],
     [13, 19, 163],
     [13, 19, 167],
     [13, 19, 173],
     [13, 19, 179],
     [13, 19, 181],
     [13, 19, 191],
     [13, 19, 193],
     [13, 19, 197],
     [13, 23, 29],
     [13, 23, 31],
     [13, 23, 37],
     [13, 23, 41],
     [13, 23, 43],
     [13, 23, 47],
     [13, 23, 53]]

theorem k4PrefixGroup0137_passes :
    k4PrefixGroup0137.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
