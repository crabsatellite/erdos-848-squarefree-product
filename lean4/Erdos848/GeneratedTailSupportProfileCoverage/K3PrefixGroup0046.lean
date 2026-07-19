import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0046 : List (List ℕ) :=
  [[13, 653],
     [13, 659],
     [13, 661],
     [13, 673],
     [13, 677],
     [13, 683],
     [13, 691],
     [13, 701],
     [13, 709],
     [13, 719],
     [13, 727],
     [13, 733],
     [13, 739],
     [13, 743],
     [13, 751],
     [13, 757]]

theorem k3PrefixGroup0046_passes :
    k3PrefixGroup0046.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
