import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0151 : List (List ℕ) :=
  [[13, 83, 89],
     [17, 19, 23],
     [17, 19, 29],
     [17, 19, 31],
     [17, 19, 37],
     [17, 19, 41],
     [17, 19, 43],
     [17, 19, 47],
     [17, 19, 53],
     [17, 19, 59],
     [17, 19, 61],
     [17, 19, 67],
     [17, 19, 71],
     [17, 19, 73],
     [17, 19, 79],
     [17, 19, 83]]

theorem k4PrefixGroup0151_passes :
    k4PrefixGroup0151.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
