import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0163 : List (List ℕ) :=
  [[17, 67, 73],
     [17, 67, 79],
     [17, 67, 83],
     [17, 67, 89],
     [17, 71, 73],
     [17, 71, 79],
     [17, 71, 83],
     [17, 73, 79],
     [17, 73, 83],
     [17, 79, 83],
     [19, 23, 29],
     [19, 23, 31],
     [19, 23, 37],
     [19, 23, 41],
     [19, 23, 43],
     [19, 23, 47]]

theorem k4PrefixGroup0163_passes :
    k4PrefixGroup0163.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
