import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0091 : List (List ℕ) :=
  [[7, 29, 181],
     [7, 29, 191],
     [7, 29, 193],
     [7, 29, 197],
     [7, 29, 199],
     [7, 29, 211],
     [7, 31, 37],
     [7, 31, 41],
     [7, 31, 43],
     [7, 31, 47],
     [7, 31, 53],
     [7, 31, 59],
     [7, 31, 61],
     [7, 31, 67],
     [7, 31, 71],
     [7, 31, 73]]

theorem k4PrefixGroup0091_passes :
    k4PrefixGroup0091.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
