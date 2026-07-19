import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0141 : List (List ℕ) :=
  [[13, 29, 139],
     [13, 29, 149],
     [13, 29, 151],
     [13, 29, 157],
     [13, 31, 37],
     [13, 31, 41],
     [13, 31, 43],
     [13, 31, 47],
     [13, 31, 53],
     [13, 31, 59],
     [13, 31, 61],
     [13, 31, 67],
     [13, 31, 71],
     [13, 31, 73],
     [13, 31, 79],
     [13, 31, 83]]

theorem k4PrefixGroup0141_passes :
    k4PrefixGroup0141.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
