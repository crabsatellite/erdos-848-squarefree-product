import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0025 : List (List ℕ) :=
  [[7, 719],
     [7, 727],
     [7, 733],
     [7, 739],
     [7, 743],
     [7, 751],
     [7, 757],
     [7, 761],
     [7, 769],
     [7, 773],
     [7, 787],
     [7, 797],
     [7, 809],
     [7, 811],
     [7, 821],
     [7, 823]]

theorem k3PrefixGroup0025_passes :
    k3PrefixGroup0025.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
