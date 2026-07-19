import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0166 : List (List ℕ) :=
  [[19, 29, 83],
     [19, 29, 89],
     [19, 29, 97],
     [19, 29, 101],
     [19, 29, 103],
     [19, 29, 107],
     [19, 29, 109],
     [19, 29, 113],
     [19, 29, 127],
     [19, 29, 131],
     [19, 31, 37],
     [19, 31, 41],
     [19, 31, 43],
     [19, 31, 47],
     [19, 31, 53],
     [19, 31, 59]]

theorem k4PrefixGroup0166_passes :
    k4PrefixGroup0166.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
