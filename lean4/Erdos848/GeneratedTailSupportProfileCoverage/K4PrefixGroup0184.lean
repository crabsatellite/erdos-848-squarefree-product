import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0184 : List (List ℕ) :=
  [[29, 61, 71],
     [31, 37, 41],
     [31, 37, 43],
     [31, 37, 47],
     [31, 37, 53],
     [31, 37, 59],
     [31, 37, 61],
     [31, 37, 67],
     [31, 37, 71],
     [31, 37, 73],
     [31, 37, 79],
     [31, 37, 83],
     [31, 37, 89],
     [31, 41, 43],
     [31, 41, 47],
     [31, 41, 53]]

theorem k4PrefixGroup0184_passes :
    k4PrefixGroup0184.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
