import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0174 : List (List ℕ) :=
  [[23, 29, 73],
     [23, 29, 79],
     [23, 29, 83],
     [23, 29, 89],
     [23, 29, 97],
     [23, 29, 101],
     [23, 29, 103],
     [23, 29, 107],
     [23, 29, 109],
     [23, 29, 113],
     [23, 31, 37],
     [23, 31, 41],
     [23, 31, 43],
     [23, 31, 47],
     [23, 31, 53],
     [23, 31, 59]]

theorem k4PrefixGroup0174_passes :
    k4PrefixGroup0174.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
