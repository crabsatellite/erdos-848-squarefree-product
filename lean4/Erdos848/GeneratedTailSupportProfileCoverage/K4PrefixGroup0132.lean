import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0132 : List (List ℕ) :=
  [[11, 73, 101],
     [11, 73, 103],
     [11, 73, 107],
     [11, 73, 109],
     [11, 79, 83],
     [11, 79, 89],
     [11, 79, 97],
     [11, 79, 101],
     [11, 79, 103],
     [11, 83, 89],
     [11, 83, 97],
     [11, 83, 101],
     [11, 89, 97],
     [13, 17, 19],
     [13, 17, 23],
     [13, 17, 29]]

theorem k4PrefixGroup0132_passes :
    k4PrefixGroup0132.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
