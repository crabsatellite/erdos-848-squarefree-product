import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0093 : List (List ℕ) :=
  [[7, 31, 163],
     [7, 31, 167],
     [7, 31, 173],
     [7, 31, 179],
     [7, 31, 181],
     [7, 31, 191],
     [7, 31, 193],
     [7, 31, 197],
     [7, 31, 199],
     [7, 37, 41],
     [7, 37, 43],
     [7, 37, 47],
     [7, 37, 53],
     [7, 37, 59],
     [7, 37, 61],
     [7, 37, 67]]

theorem k4PrefixGroup0093_passes :
    k4PrefixGroup0093.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
