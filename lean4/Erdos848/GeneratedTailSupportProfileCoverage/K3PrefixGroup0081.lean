import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0081 : List (List ℕ) :=
  [[31, 443],
     [31, 449],
     [31, 457],
     [31, 461],
     [31, 463],
     [31, 467],
     [31, 479],
     [31, 487],
     [31, 491],
     [31, 499],
     [31, 503],
     [31, 509],
     [31, 521],
     [31, 523],
     [31, 541],
     [31, 547]]

theorem k3PrefixGroup0081_passes :
    k3PrefixGroup0081.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
