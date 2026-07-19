import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0185 : List (List ℕ) :=
  [[31, 41, 59],
     [31, 41, 61],
     [31, 41, 67],
     [31, 41, 71],
     [31, 41, 73],
     [31, 41, 79],
     [31, 41, 83],
     [31, 43, 47],
     [31, 43, 53],
     [31, 43, 59],
     [31, 43, 61],
     [31, 43, 67],
     [31, 43, 71],
     [31, 43, 73],
     [31, 43, 79],
     [31, 43, 83]]

theorem k4PrefixGroup0185_passes :
    k4PrefixGroup0185.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
