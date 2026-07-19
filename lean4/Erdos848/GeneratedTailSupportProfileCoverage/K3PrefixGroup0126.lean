import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailSupportProfileCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0126 : List (List ℕ) :=
  [[79, 277],
     [79, 281],
     [79, 283],
     [79, 293],
     [79, 307],
     [79, 311],
     [79, 313],
     [79, 317],
     [79, 331],
     [79, 337],
     [79, 347],
     [79, 349],
     [83, 89],
     [83, 97],
     [83, 101],
     [83, 103]]

theorem k3PrefixGroup0126_passes :
    k3PrefixGroup0126.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 278) = true := by
  decide

end Erdos848.GeneratedTailSupportProfileCoverage
