import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0017 : List (List ℕ) :=
  [[3, 13, 311],
     [3, 13, 313],
     [3, 13, 317],
     [3, 13, 331],
     [3, 13, 337],
     [3, 13, 347],
     [3, 13, 349],
     [3, 13, 353],
     [3, 13, 359],
     [3, 13, 367],
     [3, 13, 373],
     [3, 13, 379],
     [3, 13, 383],
     [3, 13, 389],
     [3, 13, 397],
     [3, 13, 401]]

theorem k4PrefixGroup0017_passes :
    k4PrefixGroup0017.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 143) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
