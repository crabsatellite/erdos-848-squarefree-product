import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0121 : List (List ℕ) :=
  [[11, 29, 167],
     [11, 29, 173],
     [11, 31, 37],
     [11, 31, 41],
     [11, 31, 43],
     [11, 31, 47],
     [11, 31, 53],
     [11, 31, 59],
     [11, 31, 61],
     [11, 31, 67],
     [11, 31, 71],
     [11, 31, 73],
     [11, 31, 79],
     [11, 31, 83],
     [11, 31, 89],
     [11, 31, 97]]

theorem k4PrefixGroup0121_passes :
    k4PrefixGroup0121.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
