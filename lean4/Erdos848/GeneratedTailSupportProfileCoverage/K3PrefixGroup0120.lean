import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0120 : List (List ℕ) :=
  [[71, 317],
     [71, 331],
     [71, 337],
     [71, 347],
     [71, 349],
     [71, 353],
     [71, 359],
     [71, 367],
     [73, 79],
     [73, 83],
     [73, 89],
     [73, 97],
     [73, 101],
     [73, 103],
     [73, 107],
     [73, 109]]

theorem k3PrefixGroup0120_passes :
    k3PrefixGroup0120.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
