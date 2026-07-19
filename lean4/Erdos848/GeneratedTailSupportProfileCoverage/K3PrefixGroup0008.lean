import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0008 : List (List ℕ) :=
  [[3, 743],
     [3, 751],
     [3, 757],
     [3, 761],
     [3, 769],
     [3, 773],
     [3, 787],
     [3, 797],
     [3, 809],
     [3, 811],
     [3, 821],
     [3, 823],
     [3, 827],
     [3, 829],
     [3, 839],
     [3, 853]]

theorem k3PrefixGroup0008_passes :
    k3PrefixGroup0008.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
