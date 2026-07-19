import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0053 : List (List ℕ) :=
  [[17, 457],
     [17, 461],
     [17, 463],
     [17, 467],
     [17, 479],
     [17, 487],
     [17, 491],
     [17, 499],
     [17, 503],
     [17, 509],
     [17, 521],
     [17, 523],
     [17, 541],
     [17, 547],
     [17, 557],
     [17, 563]]

theorem k3PrefixGroup0053_passes :
    k3PrefixGroup0053.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
