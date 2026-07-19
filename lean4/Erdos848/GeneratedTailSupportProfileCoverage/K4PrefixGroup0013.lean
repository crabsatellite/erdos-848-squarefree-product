import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0013 : List (List ℕ) :=
  [[3, 11, 491],
     [3, 11, 499],
     [3, 11, 503],
     [3, 11, 509],
     [3, 11, 521],
     [3, 11, 523],
     [3, 11, 541],
     [3, 13, 17],
     [3, 13, 19],
     [3, 13, 23],
     [3, 13, 29],
     [3, 13, 31],
     [3, 13, 37],
     [3, 13, 41],
     [3, 13, 43],
     [3, 13, 47]]

theorem k4PrefixGroup0013_passes :
    k4PrefixGroup0013.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
