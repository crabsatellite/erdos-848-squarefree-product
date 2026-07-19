import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0063 : List (List ℕ) :=
  [[19, 661],
     [19, 673],
     [19, 677],
     [19, 683],
     [19, 691],
     [19, 701],
     [19, 709],
     [19, 719],
     [23, 29],
     [23, 31],
     [23, 37],
     [23, 41],
     [23, 43],
     [23, 47],
     [23, 53],
     [23, 59]]

theorem k3PrefixGroup0063_passes :
    k3PrefixGroup0063.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
