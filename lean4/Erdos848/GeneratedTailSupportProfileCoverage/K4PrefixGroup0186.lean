import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0186 : List (List ℕ) :=
  [[31, 47, 53],
     [31, 47, 59],
     [31, 47, 61],
     [31, 47, 67],
     [31, 47, 71],
     [31, 47, 73],
     [31, 47, 79],
     [31, 53, 59],
     [31, 53, 61],
     [31, 53, 67],
     [31, 53, 71],
     [31, 53, 73],
     [31, 59, 61],
     [31, 59, 67],
     [31, 59, 71],
     [31, 61, 67]]

theorem k4PrefixGroup0186_passes :
    k4PrefixGroup0186.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
