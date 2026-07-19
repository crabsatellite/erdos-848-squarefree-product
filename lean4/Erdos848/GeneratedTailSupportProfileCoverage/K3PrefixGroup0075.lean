import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0075 : List (List ℕ) :=
  [[29, 439],
     [29, 443],
     [29, 449],
     [29, 457],
     [29, 461],
     [29, 463],
     [29, 467],
     [29, 479],
     [29, 487],
     [29, 491],
     [29, 499],
     [29, 503],
     [29, 509],
     [29, 521],
     [29, 523],
     [29, 541]]

theorem k3PrefixGroup0075_passes :
    k3PrefixGroup0075.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
