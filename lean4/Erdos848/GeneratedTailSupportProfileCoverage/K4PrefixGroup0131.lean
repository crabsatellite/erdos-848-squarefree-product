import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0131 : List (List ℕ) :=
  [[11, 67, 103],
     [11, 67, 107],
     [11, 67, 109],
     [11, 71, 73],
     [11, 71, 79],
     [11, 71, 83],
     [11, 71, 89],
     [11, 71, 97],
     [11, 71, 101],
     [11, 71, 103],
     [11, 71, 107],
     [11, 71, 109],
     [11, 73, 79],
     [11, 73, 83],
     [11, 73, 89],
     [11, 73, 97]]

theorem k4PrefixGroup0131_passes :
    k4PrefixGroup0131.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
