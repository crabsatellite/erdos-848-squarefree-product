import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0047 : List (List ℕ) :=
  [[13, 761],
     [13, 769],
     [13, 773],
     [13, 787],
     [13, 797],
     [13, 809],
     [13, 811],
     [13, 821],
     [13, 823],
     [13, 827],
     [13, 829],
     [13, 839],
     [13, 853],
     [13, 857],
     [13, 859],
     [13, 863]]

theorem k3PrefixGroup0047_passes :
    k3PrefixGroup0047.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
