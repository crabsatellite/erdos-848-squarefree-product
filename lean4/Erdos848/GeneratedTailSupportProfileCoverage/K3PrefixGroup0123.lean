import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0123 : List (List ℕ) :=
  [[73, 293],
     [73, 307],
     [73, 311],
     [73, 313],
     [73, 317],
     [73, 331],
     [73, 337],
     [73, 347],
     [73, 349],
     [73, 353],
     [73, 359],
     [73, 367],
     [79, 83],
     [79, 89],
     [79, 97],
     [79, 101]]

theorem k3PrefixGroup0123_passes :
    k3PrefixGroup0123.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
