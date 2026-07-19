import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0061 : List (List ℕ) :=
  [[19, 461],
     [19, 463],
     [19, 467],
     [19, 479],
     [19, 487],
     [19, 491],
     [19, 499],
     [19, 503],
     [19, 509],
     [19, 521],
     [19, 523],
     [19, 541],
     [19, 547],
     [19, 557],
     [19, 563],
     [19, 569]]

theorem k3PrefixGroup0061_passes :
    k3PrefixGroup0061.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
