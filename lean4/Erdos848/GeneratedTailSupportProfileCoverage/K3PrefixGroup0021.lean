import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0021 : List (List ℕ) :=
  [[7, 311],
     [7, 313],
     [7, 317],
     [7, 331],
     [7, 337],
     [7, 347],
     [7, 349],
     [7, 353],
     [7, 359],
     [7, 367],
     [7, 373],
     [7, 379],
     [7, 383],
     [7, 389],
     [7, 397],
     [7, 401]]

theorem k3PrefixGroup0021_passes :
    k3PrefixGroup0021.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
