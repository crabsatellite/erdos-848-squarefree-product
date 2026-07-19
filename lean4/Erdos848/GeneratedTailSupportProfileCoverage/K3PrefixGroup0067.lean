import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0067 : List (List ℕ) :=
  [[23, 317],
     [23, 331],
     [23, 337],
     [23, 347],
     [23, 349],
     [23, 353],
     [23, 359],
     [23, 367],
     [23, 373],
     [23, 379],
     [23, 383],
     [23, 389],
     [23, 397],
     [23, 401],
     [23, 409],
     [23, 419]]

theorem k3PrefixGroup0067_passes :
    k3PrefixGroup0067.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
