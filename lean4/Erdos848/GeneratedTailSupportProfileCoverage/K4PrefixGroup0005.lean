import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0005 : List (List ℕ) :=
  [[3, 7, 439],
     [3, 7, 443],
     [3, 7, 449],
     [3, 7, 457],
     [3, 7, 461],
     [3, 7, 463],
     [3, 7, 467],
     [3, 7, 479],
     [3, 7, 487],
     [3, 7, 491],
     [3, 7, 499],
     [3, 7, 503],
     [3, 7, 509],
     [3, 7, 521],
     [3, 7, 523],
     [3, 7, 541]]

theorem k4PrefixGroup0005_passes :
    k4PrefixGroup0005.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
