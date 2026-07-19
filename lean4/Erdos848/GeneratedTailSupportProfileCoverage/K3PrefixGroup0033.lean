import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0033 : List (List ℕ) :=
  [[11, 317],
     [11, 331],
     [11, 337],
     [11, 347],
     [11, 349],
     [11, 353],
     [11, 359],
     [11, 367],
     [11, 373],
     [11, 379],
     [11, 383],
     [11, 389],
     [11, 397],
     [11, 401],
     [11, 409],
     [11, 419]]

theorem k3PrefixGroup0033_passes :
    k3PrefixGroup0033.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
